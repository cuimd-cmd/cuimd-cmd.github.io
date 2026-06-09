# Compatibility shim for running this Jekyll 3.x site on Ruby 4 locally.
# Ruby 4 removed taint/trust APIs that older Jekyll/Liquid versions still call.
class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end

  unless method_defined?(:untrusted?)
    def untrusted?
      false
    end
  end
end

