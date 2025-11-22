.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;
.super Lu8/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;",
        "Lu8/a;",
        "<init>",
        "()V",
        "ui-id-verification_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final b:Ll9/e;

.field public final c:Lff/b;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->b:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lu8/a;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->b:Ll9/e;

    .line 10
    .line 11
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;

    .line 16
    .line 17
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "phoneNumber"

    .line 27
    .line 28
    const-string v2, "token"

    .line 29
    .line 30
    const-string v3, "challenge"

    .line 31
    .line 32
    const-string v4, "uuid"

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iput-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->e:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iput-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->f:Ljava/lang/String;

    .line 53
    .line 54
    const-string v5, "operationType"

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iput-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->j:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iput-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->g:Ljava/lang/String;

    .line 67
    .line 68
    const-string v5, "countyCode"

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->h:Ljava/lang/String;

    .line 75
    .line 76
    :cond_0
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;

    .line 81
    .line 82
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;->b:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 83
    .line 84
    const v5, 0x7f1302a0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;

    .line 99
    .line 100
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;->b:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;

    .line 110
    .line 111
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityVerificationBinding;->b:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 112
    .line 113
    new-instance v0, Lxf/d;

    .line 114
    .line 115
    const/16 v5, 0xf

    .line 116
    .line 117
    invoke-direct {v0, v5, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->d:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->e:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "verificationCode"

    .line 139
    .line 140
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->j:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->f:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->g:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "countryCode"

    .line 156
    .line 157
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->h:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 163
    .line 164
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v1, "supportFragmentManager"

    .line 175
    .line 176
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v1, "beginTransaction()"

    .line 184
    .line 185
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 190
    .line 191
    .line 192
    const v1, 0x7f0a0181

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;->c:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    return-void
.end method
