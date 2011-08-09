Теперь давайте создадим объект приветствия `Greeter` и воспользуемся им:

``` ruby
    irb(main):035:0> g = Greeter.new("Pat")
    => #<Greeter:0x16cac @name="Pat">
    irb(main):036:0> g.say_hi
    Hi Pat!
    => nil
    irb(main):037:0> g.say_bye
    Bye Pat, come back soon.
    => nil
```

Когда новый объект `g` был создан, он вспоминает что его имя `Pat`. Но, как же нам получить имя напрямую?

``` ruby
    irb(main):038:0> g.@name
    SyntaxError: compile error
    (irb):52: syntax error
            from (irb):52
```

Нет, так сделать не могу.

##Что скрывается под кожей Объектов

Переменные экземпляра спрятаны внутри объекта. Ну на самом деле, они не совсем спрятаны, вы можете их получить когда вам потребуется, есть множество способов получить доступ к ним, Ruby использует хорошо объектно-ориентированный подход для хранения данных.

Так какие же методы существуют в нашем `Greeter`?

``` ruby
    irb(main):039:0> Greeter.instance_methods
    => ["method", "send", "object_id", "singleton_methods",
        "__send__", "equal?", "taint", "frozen?",
        "instance_variable_get", "kind_of?", "to_a",
        "instance_eval", "type", "protected_methods", "extend",
        "eql?", "display", "instance_variable_set", "hash",
        "is_a?", "to_s", "class", "tainted?", "private_methods",
        "untaint", "say_hi", "id", "inspect", "==", "===",
        "clone", "public_methods", "respond_to?", "freeze",
        "say_bye", "__id__", "=~", "methods", "nil?", "dup",
        "instance_variables", "instance_of?"]
```

Ну ничего себе! Да здесь полно методов. Ведь мы определили только два метода.
Что здесь происходит? Ну, это **все** методы для объектов нашего `Greeter`, полный лист, включая 
присвоенные родительским классом. Если мы хотим вывести список методов определенные только классом `Greeter`, мы можем сказать ему, чтобы он не включал их в список, присвоив параметр `false`, означающий что мы не хотим показывать методы родительского класса.

``` ruby
    irb(main):040:0> Greeter.instance_methods(false)
    => ["say_bye", "say_hi"]
```

О да, так намного лучше. Так, давайте-ка посмотрим, какие методы отвечают объектам нашего `Greeter`:

``` ruby
    irb(main):041:0> g.respond_to?("name")
    => false
    irb(main):042:0> g.respond_to?("say_hi")
    => true
    irb(main):043:0> g.respond_to?("to_s")
    => true
```

Так, он знает `say_hi` и `to_s` (обозначающий конвертирование значения в `string`, метод который определен для каждого объекта по умолчанию), но он ничего не знает о `name`.

## Изменения классов – Никогда не поздно!

Но, что же делать если мы хотим видеть или менять `name`? Ruby предлагает очень простой способ для предоставления доступа к переменным объекта.

``` ruby
    irb(main):044:0> class Greeter
    irb(main):045:1>   attr_accessor :name
    irb(main):046:1> end
    => nil
```

В Ruby, вы можете открыть класс снова и модифицировать его. Изменения будут доступны в любых новых объектах которые мы создадим, и даже, доступны в существующих объектах данного класса. Так что, давайте создадим новый объект класса и поиграемся с `@name` значением.

``` ruby
    irb(main):047:0> g = Greeter.new("Andy")
    => #<Greeter:0x3c9b0 @name="Andy">
    irb(main):048:0> g.respond_to?("name")
    => true
    irb(main):049:0> g.respond_to?("name=")
    => true
    irb(main):050:0> g.say_hi
    Hi Andy!
    => nil
    irb(main):051:0> g.name="Betty"
    => "Betty"
    irb(main):052:0> g
    => #<Greeter:0x3c9b0 @name="Betty">
    irb(main):053:0> g.name
    => "Betty"
    irb(main):054:0> g.say_hi
    Hi Betty!
    => nil
```

Используя `attr_accessor` мы определили два новых метода для нас, `name` для получения значения, и `name=` для его обозначения.

## Приветствуем всех и каждого, Супер Приветствие никем не пренебрегает.

Данное приветствие не самое интересное на данный момент, сейчас оно может иметь дело только с одной персоной в одно и тоже время. Но что если мы хотим сделать Супер Приветствие с именем `MegaGreeter`, которое могло бы приветствовать и весь мир, и одну персону, и даже целый список людей?

Давайте в этот раз напишем код в файл, вместо нашего интерактивного Ruby интерпритатора IRB.
Чтобы выйти из IRB, напишите “quit”, “exit” или нажмите Control-D.

``` ruby
    #!/usr/bin/env ruby
    
    class MegaGreeter
      attr_accessor :names
    
      # Создаем объект
      def initialize(names = "World")
        @names = names
      end
    
      # Говорим всем привет
      def say_hi
        if @names.nil?
          puts "..."
        elsif @names.respond_to?("each")
    
          # @names это список какой-то, итерации!
          @names.each do |name|
            puts "Hello #{name}!"
          end
        else
          puts "Hello #{@names}!"
        end
      end
    
      # Говорим всем пока
      def say_bye
        if @names.nil?
          puts "..."
        elsif @names.respond_to?("join")
          # Соединяем элементы списка через запятую
          puts "Goodbye #{@names.join(", ")}.  Come back soon!"
        else
          puts "Goodbye #{@names}.  Come back soon!"
        end
      end
    
    end
    
    
    if __FILE__ == $0
      mg = MegaGreeter.new
      mg.say_hi
      mg.say_bye
    
      # Меняем имя на "Zeke"
      mg.names = "Zeke"
      mg.say_hi
      mg.say_bye
    
      # Меняем имя в массив имен
      mg.names = ["Albert", "Brenda", "Charles",
        "Dave", "Englebert"]
      mg.say_hi
      mg.say_bye
    
      # Присваиваем переменной nil
      mg.names = nil
      mg.say_hi
      mg.say_bye
    end
```

Сохраним этот файл как `ri20min.rb`, и запустим `ruby ri20min.rb`. Вывод должен быть:

```
    Hello World!
    Goodbye World.  Come back soon!
    Hello Zeke!
    Goodbye Zeke.  Come back soon!
    Hello Albert!
    Hello Brenda!
    Hello Charles!
    Hello Dave!
    Hello Englebert!
    Goodbye Albert, Brenda, Charles, Dave, Englebert.  Come
    back soon!
    ...
    ...
```

Большинство новых вещей вы можете найти в финальной части, в которой мы можем [копнуть немного глубже.][]

  [копнуть немного глубже.]: ../4