module Decorator
    def correct_name(name)
        return trimmer(capitalizer(name))
    end

    def capitalizer(name)
        return name.to_s.capitalize()
    end

    def trimmer(name)
        return name[0..9]
    end
end
