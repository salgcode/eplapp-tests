rootProject.name="app-tests"

listOf("api-tests", "ui-tests").forEach { folder ->
    include(folder)
    project(":${folder}").projectDir = file(folder)
}

