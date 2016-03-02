HTML_TEST_STR = <<-'HTML' # Make it behave like a single-quoted string
<div id="quickref">

  <div style="float:left">

    <table>
      <tbody><tr>
        <td><code>[abc]</code></td>
        <td>A single character of: a, b, or c</td>
      </tr>
      <tr>
        <td><code>[^abc]</code></td>
        <td>Any single character except: a, b, or c</td>
      </tr>
      <tr>
        <td><code>[a-z]</code></td>
        <td>Any single character in the range a-z</td>
      </tr>
      <tr>
        <td><code>[a-zA-Z]</code></td>
        <td>Any single character in the range a-z or A-Z</td>
      </tr>
      <tr>
        <td><code>^</code></td>
        <td>Start of line</td>
      </tr>
      <tr>
        <td><code>$</code></td>
        <td>End of line</td>
      </tr>
      <tr>
        <td><code>\A</code></td>
        <td>Start of string</td>
      </tr>
      <tr>
        <td><code>\z</code></td>
        <td>End of string</td>
      </tr>
    </tbody></table>
  </div>

  <div style="float:left">
    <table>
      <tbody><tr>
        <td><code>.</code></td>
        <td>Any single character</td>
      </tr>
      <tr>
        <td><code>\s</code></td>
        <td>Any whitespace character</td>
      </tr>
      <tr>
        <td><code>\S</code></td>
        <td>Any non-whitespace character</td>
      </tr>
      <tr>
        <td><code>\d</code></td>
        <td>Any digit</td>
      </tr>
      <tr>
        <td><code>\D</code></td>
        <td>Any non-digit</td>
      </tr>
      <tr>
        <td><code>\w</code></td>
        <td>Any word character (letter, number, underscore)</td>
      </tr>
      <tr>
        <td><code>\W</code></td>
        <td>Any non-word character</td>
      </tr>
      <tr>
        <td><code>\b</code></td>
        <td>Any word boundary</td>
      </tr>
    </tbody></table>
  </div>

  <table>
    <tbody><tr>
      <td><code>(...)</code></td>
      <td>Capture everything enclosed</td>
    </tr>
    <tr>
      <td><code>(a|b)</code></td>
      <td>a or b</td>
    </tr>
    <tr>
      <td><code>a?</code></td>
      <td>Zero or one of a</td>
    </tr>
    <tr>
      <td><code>a*</code></td>
      <td>Zero or more of a</td>
    </tr>
    <tr>
      <td><code>a+</code></td>
      <td>One or more of a</td>
    </tr>
    <tr>
      <td><code>a{3}</code></td>
      <td>Exactly 3 of a</td>
    </tr>
    <tr>
      <td><code>a{3,}</code></td>
      <td>3 or more of a</td>
    </tr>
    <tr>
      <td><code>a{3,6}</code></td>
      <td>Between 3 and 6 of a</td>
    </tr>
  </tbody></table>

  <div id="regex_options" style="text-align:center">
    <p>
      options:
      <code>i</code> case insensitive
      <code>m</code> make dot match newlines
      <code>x</code> ignore whitespace in regex
      <code>o</code> perform #{...} substitutions only once
    </p>
  </div>

</div>
HTML
