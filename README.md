# &omega; webring

This is an attempt to replicate [Devine Lu Linvega](https://wiki.xxiivv.com/site/devine_lu_linvega.html)'s [webring](https://webring.xxiivv.com/) in a very minimal way, and with a lower technical bar.

## Add your website to this webring

1. Clone this repository
2. Add your site using `./wr add example.com "my cool website" "John Doe"` \
    Replace `example.com` with your actual website url, `my cool website` with your entry title, and optionally add your name
3. Submit a patch by any of these methods
    - Issuing a pull request from [GitHub](https://github.com/atgumx/webring) or [GitLab](https://gitlab.com/atgumx/webring)
    - Sending a mail to the project's [mailing list](https://lists.sr.ht/~a2/webring)
    - Using [`git send-email`](https://git-send-email.io/)
4. Add the ring links to your site, preferrably in the footer, for example
    ```html
    <ul>
        <li><a href="https://webring.gumx.cc/{{example.com}}/previous">&larr; previous</a></li>
        <li><a href="https://webring.gumx.cc/">webring index</a></li>
        <li><a href="https://webring.gumx.cc/{{example.com}}/next">next &rarr;</a></li>
    </ul>
    ```

## Host your own

1. Clone the project [repository](https://git.sr.ht/~a2/webring), and add your remotes
2. Run `rm -fr entries/* public` to delete old entries and build artifacts
3. Add your entries and run `./wr` to check the output
4. Upload your webring to a static site hosting provider, examples are available for
    - [Sourcehut Pages](https://git.sr.ht/~a2/webring/tree/main/item/ci-examples/.build.yml)
    - [GitHub Pages](https://git.sr.ht/~a2/webring/tree/main/item/ci-examples/.github)
    - [GitLab Pages](https://git.sr.ht/~a2/webring/tree/main/item/ci-examples/.gitlab-ci.yml)

## License

This project is licensed under [MIT license](https://git.sr.ht/~a2/webring/tree/main/item/LICENSE)