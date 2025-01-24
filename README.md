# ruby-practice
심심치 않게 보이는 Ruby...<br/>
재미삼아 진행해보는 Ruby 맛보기!
<br/>

## Ruby 간단 특징
- 상당히 인간의 언어와 유사함
- 단/복수를 상당히 따짐
- 동적 타입 언어인만큼 명시적인 타입 선언이 없음.

<br/>

### 🤔 Java랑 어떻게 다를까?
- **Java**
  - **정적 타입 (컴파일)** 언어
  - 실행 환경 : JVM (Java Virtual Machine)
  - 성능 : **높은** 성능 & **멀티 스레드** 최적화
  - 프레임워크 : Spring, Quarkus, Micronaut, Dropwizard, ...
  - 개발 속도 : 초기 설정 복잡 & 학습 곡선 가파름
  - 확장성 : 대규모 엔터프라이즈 환경 최적 (EE)
  - 유연성 : 타입 안정성 → 제한적
  - 커뮤니티 및 생태계 : 매우 큼, 산업 표준 기술 연동이 많음(한국 : 국가표준 프레임워크) 
  - 배포 및 실행 : Docker, Kubernetes 등과 연계 강력


- **Ruby**
  - **동적 타입 (인터프리터)** 언어 
  - 실행 환경 : Ruby Interpreter (ex. MRI, JRuby, Rubinius, ...)
  - 성능 : 단일 스레드 기반 → "이벤트 루프 기반" 서버 (보완 가능)
  - 프레임워크 : Ruby on Rails (Rails), Sinatra, ...
  - 개발 속도 : 간결한 문법 → 빠른 개발 가능
  - 확장성 : 소규모 애플리케이션 적합 (확장성 : Java만큼 좋지 않음)
  - 유연성 : 동적 언어 → 높은 유연성
  - 커뮤니티 및 생태계 : 활발하지만, 규모는 Java에 비해 작음....(그런가..?)
  - 배포 및 실행 : 경량 서버 / 특정 목적에 맞는 간단한 배포

<br/>    

## 자료형
> 참고로 "**주석**"은 `#` 을 사용합니다. _(Python과 동일)_ 
- **null** : `nil`
- **숫자**
- **문자열** : `'...'` / `"..."`
- **논리** : `true` / `false`
- **배열 (Array)** : Index와 번호에 대응하는 데이터들로 이루어진 자료구조
    - 타입이 서로 달라도 상관없다. 
    - 배열 내부 배열도 가능
    ```ruby
    people = ['Alice', 4423, 3.14, nil, false]
    people[0] #=> 'Alice'
    people[10] #=> nil
    ```
- **해시 (Hash)** : Key를 값으로 매핑할 수 있는 자료구조 (`{(Key) => (Value)}`)
    - 타입이 서로 달라도 상관없다.
    ```ruby
      colors_a = {'red' => 'ff0000', 'green' => '00ff00'}
      colors_b = {red: 'ff0000', green: '00ff00'}
  
      colors_a['green'] #=> '00ff00'
      colors_a['red'] #=> 'ff0000'
      colors_b['green'] #=> '00ff00'
      colors_b['red'] #=> 'ff0000'
     ```

<br/>  

## 변수 & 상수
- `=` : 선언
```ruby
x = 2 
puts x #=> 2

x += 2
puts x #=> 4

x = 5
puts x #=> 2

x += 2
puts x #=> 7
```
- **지역변수 / 전역변수 / 인스턴스 변수 / 클래스 변수** (Java와 개념 유사 - 둘 다 객체지향 언어)
```ruby
foo = 'foo is "local" variable'
$foo = 'foo is "global" variable'
@foo = 'foo is "instance" variable'
@@foo = 'foo is "class" variable'
```

<br/>    

## 연산자 (비교/산술/대입/논리)
- `=`
- `==` / `!=` / `<=` / `>=`
- `&&` & `and`
- `||` & `or`
- `!` & `not`


<br/>    

