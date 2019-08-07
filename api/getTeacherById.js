import { success, failure } from "./libs/response-lib";
const dao = require('./dao/dao')

export async function main(event, context) {
	console.log('Executing getTeacherById')

	try {
		// Obtain parameters
		if (!event.pathParameters || !event.pathParameters.id) {
			return failure({ status: false, message: 'ID not provided' })
		}

		let id = event.pathParameters.id

		// Retrieves the teacher
		const results = await dao.getTeacher(id)
		if (!results) {
			return failure({ status: false, message: `Teacher not found with ID ${id}` })
		} else {

			// Retrieves the teacher languages
			// const languages = await dao.getTeacherLanguages(id)
			// if (languages) {
			// 	results.languages = languages
			// }

			// Retrieves the teacher class types
			const classTypes = await dao.getTeacherClassTypes(id)
			if (classTypes) {
				results.classTypes = classTypes
			}
			
			// Retrieves the teacher ratings
			const ratings = await dao.getTeacherRatings(id)
			if (ratings) {
				results.ratings = ratings
			}

			// Retrieves the teacher availability
			const availability = await dao.getTeacherAvailability(id)
			if (availability) {
				results.availability = availability
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
