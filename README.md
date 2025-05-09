# TreeSitterLanguages

이 프로젝트는 [Tree-sitter](https://tree-sitter.github.io/tree-sitter/) 파서 생성기를 Swift 패키지로 래핑한 것으로, [Runestone](https://github.com/simonbs/runestone) 프레임워크와 함께 사용하기 위해 개인적으로 Fork하여 필요한 언어만 포함시킨 버전입니다.

## 프로젝트 소개

이 패키지는 원본 TreeSitterLanguages 프로젝트에서 필요한 언어(Swift, JavaScript, TypeScript, Python, Java, C++)만 남기고 수정한 버전입니다. 
특히 각 언어의 들여쓰기 규칙과 파싱 전략이 개선되었습니다.

- Swift: 프로토콜, 클래스, 함수 본문, 조건문 등 Swift 언어에 최적화된 들여쓰기 규칙 적용 완료
- JavaScript/TypeScript: JSX 요소 및 클래스 바디 등의 들여쓰기 처리 개선 예정
- Python: Python 특유의 들여쓰기 기반 구문 처리 예정
- Java: Java 코드 스타일에 맞게 들여쓰기 규칙 수정 예정
- C++: C++ 특유의 문법 구조에 맞게 파싱 규칙 조정 예정

## 설치 방법

Swift Package Manager를 통해 설치할 수 있습니다.

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/namudongs/TreeSitterLanguages.git", from: "0.1.0")
    ]
)
```

## 사용 방법

이 패키지는 각 언어별로 3개의 라이브러리를 제공합니다.

|이름|용도|
|-|-|
|TreeSitter{Language}|Tree-sitter 파서의 C 코드를 포함하며, `tree_sitter_{language}` 함수를 노출합니다.|
|TreeSitter{Language}Queries|해당 언어에 사용할 쿼리를 제공합니다. 자세한 내용은 [Tree-sitter 문서](https://tree-sitter.github.io/tree-sitter/syntax-highlighting#queries)를 참고하세요.|
|TreeSitter{Language}Runestone|[Runestone](https://github.com/simonbs/runestone)과 함께 사용할 수 있도록 언어를 노출합니다. 이 라이브러리는 `TreeSitterLanguage.{language}` 형태로 언어를 제공하며, 수정된 들여쓰기 규칙을 포함합니다.|

또한 TreeSitterLanguagesCommon 라이브러리는 `TSLanguage`와 같은 Tree-sitter의 기본 타입을 노출합니다.

## 사용 예시

Runestone을 사용하는 앱에서 Swift 언어 지원을 추가하려면:

```swift
import Runestone
import TreeSitterSwiftRunestone

let textView = TextView()
textView.language = .swift
```

## 지원 언어

이 패키지는 다음 언어들을 지원합니다:
- Swift
- JavaScript
- TypeScript
- Python
- Java
- C++

## 호환성

이 패키지는 Runestone 프레임워크와 호환되는 Tree-sitter 버전을 사용합니다. 
모든 파서는 `tree-sitter-cli`를 통해 생성되었으며, 필요에 맞게 들여쓰기 전략이 수정되었습니다.
