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

## Class 활용
일반적인 명명 레퍼런스와 선언 방법은 아래와 같다.
- "**Class**" Name: **camel** 방식
- "**Class File**" Name: **snake** 방식
- "**Method**" Name : **snake** 방식
- "**Constant**" Name : **Upper** Case + **snake** 방식
```ruby
# practice_member.rb
class PracticeMemeber
  CONSTANT_CLASS = ''
  @@variable_class = ''

  def initialize(var_instance)
    @variable_instance = var_instance
  end
  
  def print_instance_var 
    puts @variable_instance
  end
  
  def print_class_var
    puts @@variable_class
  end

  def print_class_const
    puts CONSTANT_CLASS
  end
end
```

<br/>

### `attr_accessor` / `attr_reader` / `attr_writer`
간단하게 Java/Spring 매커니즘에서 많이 사용하는 Lombok과 유사하다고 생각하면 된다.<br/>
인스턴스의 변수들을 외부에서 제어할 있도록 도와주는 제어자 역할을 수행한다.
- `attr_accessor` : 기본 Getter & Setter 생성
- `attr_reader` : 기본 Getter 생성
- `attr_writer` : 기본 Setter 생성

**인스턴스 변수**는 **내부 메서드에서만 접근 가능**하기 때문에 외부에서 `(Instance).(Variable)` 방식으로 접근하면 `NoMethodError`가 발생한다.
기존에 Getter/Setter 메서드를 직접 선언했던 불편함을 `attr_` 메서드를 통해 가독성과 코드 비용을 절감할 수 있다.
```ruby
# as-is
class MemberA
  def initialize(name)
    @name = name
  end
  
  def name 
    @name
  end
  def name=(name)
    @name = name
  end
end

# to-be
class MemberB
  def initialize(name)
    @name = name
  end

  attr_reader :name
  attr_writer :name
end

member_a = MemberA.new('donggyu')
member_b = MemberB.new('donggyu')

member_a.name
member_b.name

member_a.name = "new donggyu"
member_b.name = "new donggyu"
```

또한 **Class Variable**(`@@`)과 **Class Constant** 모두 `attr_` 설정이 가능하다.

<br/>

> `Kernel` 모듈에는 기본적으로 인스턴스에 대한 getter & setter 메서드를 override 하고 있다. <br/>
> **string 타입** 혹은 `:{변수명}`으로 인스턴스 변수명을 파라미터로 주입하면 사용이 가능하다.
> ```ruby
> member_a.instance_variable_get("@name")
> member_a.instance_variable_get(:name)
> 
> member_a.instance_variable_set("@name", "new name")
> member_a.instance_variable_set(:name, "new name")
> 
> member_a.instance_variable_defined?("@name") #=> true
> member_a.instance_variable_defined?(:name) #=> true
> member_a.instance_variable_defined?("@age") #=> false
> ```
> 🚨 꼭 **Kernel 모듈**을 공부해보도록 하자. 🚨 <br/>
> 그 외에도 다양한 라이브러리를 공부하면 좋을 것 같다 (`rbenv` & `rbs`) 

<br/>

----
### ※ 참고
> I'll practice ruby on rails by demo rails project! (see. [yummy-ground/ruby-on-rails-practice-project](https://github.com/yummy-ground/ruby-on-rails-practice-project))
- 영상
  - [코딩 전도사 :: 5주만에 웹 어플리케이션 만들기(Ruby coin) 재생목록](https://www.youtube.com/watch?v=iNrT0O2_MQM&list=PLEBQPmkNcLCIE9ERi4k_nUkGgJoBizx6s)
  - [Rajat Talesra :: Ruby on Rails 2024 - Airbnb Clone - Fullstack web development](https://www.youtube.com/watch?v=CFk87gt_4JM&list=PLoDt3UyLUtch1KR0U_UZ9GXJ5NRe-7BAh)
  - [Rajat Talesra :: Rails API + React Fullstack Series](https://www.youtube.com/watch?v=O319tmmhrM8&list=PLoDt3UyLUtcjboxJVcObKvV_uNFeA8QCf)
  - [GoRailsTV](https://www.youtube.com/@GorailsTV)
- 아티클
  - Rails - MVC
    - [GeeksforGeeks :: Ruby on Rails - MVC](https://www.geeksforgeeks.org/ruby-on-rails-mvc/)
    - [Medium :: Introduction to Ruby on Rails and how MVC works!!](https://medium.com/nerd-for-tech/introduction-to-ruby-on-rails-and-how-mvc-works-c56dff61dce5) 
    - [DEV Community :: 🚀 Ruby on Rails: MVC and you!](https://dev.to/dumebii/model-view-controller-in-rails-a-deep-dive-into-the-mvc-architecture-4oi1)
- 튜토리얼
  - Ruby
    - [try ruby](https://try.ruby-lang.org/) 
    - [ruby-lang.org](https://www.ruby-lang.org/ko/documentation/)
    - [ruby guides](https://www.rubyguides.com/)
  - Rails
    - [Rails :: Guides](https://guides.rubyonrails.org/index.html)
      - [한국 버전](https://rubykr.github.io/rails_guides/index.html)
    - [Tutorialspoint :: Ruby on Rails](https://www.tutorialspoint.com/ruby-on-rails/index.htm)