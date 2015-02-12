module EZCoffee
  class Runner
    def self.run
      `open index.html && coffee -w -o js --compile src `
    end
  end
end
