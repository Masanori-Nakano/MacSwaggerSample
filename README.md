
1.Homebrewインストール

1-1.Homebrewの公式サイトへブラウザでアクセス
https://brew.sh/index_ja.html

1-2.公式サイトへ記載されているコマンドをターミナルで実行
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2.swagger-codegenのインストール

2-1.以下のコマンドをターミナルで実行
brew upgrade swagger-codegen

3.swaggerのconfigファイルの作成

3-1.使用できる項目を表示
swagger-codegen config-help -l swift4

3-2.以下のコマンドをターミナルで実行
touch swagger-config.json 

3-3.作成したswagger-config.json内に設定を記載

例
※ コメントは記載できません。
========================================================================================

{
    // Sort method arguments to place required parameters before optional parameters. (Default: true)
    // メソッドの引数をソートして、必要なパラメータをオプションのパラメータの前に配置します。
    "sortParamsByRequiredFlag" : true,

    // Whether to ensure parameter names are unique in an operation (rename parameters that are not). (Default: true)
    "ensureUniqueParams" : true,

    // boolean, toggles whether unicode identifiers are allowed in names or not, default is false (Default: false)
    "allowUnicodeIdentifiers": false,

    // Project name in Xcode
    "projectName": ,

    // Optionally use libraries to manage response.  Currently PromiseKit, RxSwift are available.
    "responseAs": ,

    // Treat 'required' properties in response as non-optional (which would crash the app if api returns null as opposed to required option specified in json schema
    // unwrapRequired=trueにするとRequiredで定義したプロパティはNonOptionalになる
    "unwrapRequired": true,

    // Source information used for Podspec
    "podSource": ,

    // Version used for Podspec
    "podVersion": ,

    // Authors used for Podspec
    "podAuthors": ,

    // Social Media URL used for Podspec
    "podSocialMediaURL": ,

    // Docset URL used for Podspec
    "podDocsetURL": ,    

    // License used for Podspec
    "podLicense": ,

    // Homepage used for Podspec
    "podHomepage": ,

    // Summary used for Podspec
    "podSummary": ,

    // Description used for Podspec
    "podDescription": ,

    // Screenshots used for Podspec
    "podScreenshots": ,

    // Documentation URL used for Podspec
    "podDocumentationURL": ,

    // Flag to make all the API classes inner-class of {{projectName}}API
    "swiftUseApiNamespace": ,

    // hides the timestamp when files were generated (Default: true)
    "hideGenerationTimestamp": true,

    // Accept and cast values for simple types (string->bool, string->int, int->string) (Default: false)
    "lenientTypeCast": false

}

========================================================================================













swagger-codegen generate -l swift4 -i ./swagger.yaml -o ./swagger-output -c ./swagger-config.json

※ 以下のコマンドでswaggerで利用できる言語の一覧を表示
swagger-codegen