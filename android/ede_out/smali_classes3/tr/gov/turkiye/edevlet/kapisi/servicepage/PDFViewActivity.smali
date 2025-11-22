.class public final Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "ui-service-page_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ll9/e;

.field public final b:Lff/b;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity$b;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity$b;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->a:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->c:Z

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lff/b;->f(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lff/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "isNativeData"

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->c:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "fileName"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 48
    .line 49
    const v0, 0x7f13028c

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 73
    .line 74
    new-instance v0, Lzd/e;

    .line 75
    .line 76
    const/16 v1, 0xa

    .line 77
    .line 78
    invoke-direct {v0, v1, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->t()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v1, 0x2

    .line 93
    const/4 v2, 0x6

    .line 94
    const/4 v3, 0x0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->b:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->b:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 111
    .line 112
    const v4, -0x333334

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;->b:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v4, Lcom/github/barteksc/pdfviewer/PDFView$a;

    .line 128
    .line 129
    new-instance v5, Lm2/a;

    .line 130
    .line 131
    invoke-direct {v5, p1}, Lm2/a;-><init>(Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v4, v0, v5}, Lcom/github/barteksc/pdfviewer/PDFView$a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lm2/a;)V

    .line 135
    .line 136
    .line 137
    const/16 p1, 0x8

    .line 138
    .line 139
    iput p1, v4, Lcom/github/barteksc/pdfviewer/PDFView$a;->b:I

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    new-instance p1, Lv/e;

    .line 146
    .line 147
    invoke-direct {p1, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    const v0, 0x7f1301ce

    .line 151
    .line 152
    .line 153
    const v4, 0x7f1301cf

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p1, v3, v2, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v2, Lpg/f;->a:Lpg/f;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Lv/e;

    .line 164
    .line 165
    invoke-direct {p1, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    const v0, 0x7f1301ca

    .line 169
    .line 170
    .line 171
    const v4, 0x7f1301cb

    .line 172
    .line 173
    .line 174
    invoke-static {v0, p1, v3, v2, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v2, Lpg/g;->a:Lpg/g;

    .line 179
    .line 180
    :goto_0
    invoke-static {p1, v0, v3, v2, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lv/e;->show()V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const v0, 0x7f0a006d

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->t()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v3, "android.intent.action.SEND"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/16 v5, 0x17

    .line 35
    .line 36
    const-string v6, "android.intent.extra.SUBJECT"

    .line 37
    .line 38
    const-string v7, "android.intent.extra.STREAM"

    .line 39
    .line 40
    const-string v8, "application/pdf"

    .line 41
    .line 42
    const v9, 0x7f13001c

    .line 43
    .line 44
    .line 45
    if-lt v3, v5, :cond_0

    .line 46
    .line 47
    :try_start_0
    const-string v3, "tr.gov.turkiye.edevlet.kapisi.fileprovider"

    .line 48
    .line 49
    invoke-static {p0, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v5, "getUriForFile(context,\n \u2026\", file\n                )"

    .line 54
    .line 55
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    sget-object v3, Lyd/a;->a:Lyd/a$a;

    .line 80
    .line 81
    new-array v5, v4, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    aput-object p1, v5, v1

    .line 88
    .line 89
    const-string p1, "Error %s"

    .line 90
    .line 91
    invoke-virtual {v3, p1, v5}, Lyd/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "file://"

    .line 107
    .line 108
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    const-string p1, "android.intent.extra.TEXT"

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    :cond_1
    :goto_0
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {v2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    :cond_2
    return v1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->b:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final s()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->a:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityPdfPageBinding;

    return-object v0
.end method

.method public final t()Ljava/io/File;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f1300a0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->d:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 49
    :goto_1
    if-nez v1, :cond_3

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v1, "download"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    new-instance v1, Lv/e;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const v2, 0x7f1301ca

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    const/4 v4, 0x0

    .line 78
    const v5, 0x7f1301cb

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v1, v4, v3, v5}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v3, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PDFViewActivity$a;

    .line 86
    .line 87
    const/4 v5, 0x2

    .line 88
    invoke-static {v1, v2, v4, v3, v5}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lv/e;->show()V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-object v0
.end method
