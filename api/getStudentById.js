import { success, failure } from "./libs/response-lib";
const dao = require('./dao/dao')

export async function main(event, context) {
	console.log('Executing getStudentById')

	try {
		// Obtain parameters
		if (!event.pathParameters || !event.pathParameters.id) {
			return failure({ status: false, message: 'ID not provided' })
		}

		let id = event.pathParameters.id

		// Retrieves the teacher
		const results = await dao.getStudent(id)
		if (!results) {
			return failure({ status: false, message: `Student not found with ID ${id}` })
		} else {

			// Retrieves the student ratings
			const ratings = await dao.getStudentRatings(id)
			if (ratings) {
				results.ratings = ratings
			}
			
		}

		// Return status code 200
		console.log(`results: ${JSON.stringify(results)}`)
		return success(results)

	} catch(error) {
		// Return status code 500
		console.log(error)
		return failure({ status: false, message: error })
	}

}
