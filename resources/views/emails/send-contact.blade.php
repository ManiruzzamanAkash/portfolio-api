
<html>
    <body>
        <div style="border: 1px solid #e6e6e6;padding: 20px; text-align: center; font-size: 18px; font-family: sans-serif;">
            <h2>Hello, {{ config('app.name') }}</h2>
            <h3>
                You've got a message from {{ $contact->name }}
                <br />
                <strong>Email: </strong> {{ $contact->email }} <br />
                <strong>Phone: </strong> {{ $contact->phone }} 
            </h3>
            <hr />
            <div>
                {!! '<h3>' . $contact->subject . '</h3>' !!}
                {!! $contact->message !!}
            </div>
        </div>
    </body>
</html>