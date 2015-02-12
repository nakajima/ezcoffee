module EZCoffee
  class Runner
    def self.run
      `coffee -w -o js --compile src `
    end
  end
end
