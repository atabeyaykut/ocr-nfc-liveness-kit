.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;
.super Lu8/a;
.source "SourceFile"

# interfaces
.implements Lbi/a$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;",
        "Lu8/a;",
        "Lbi/a$a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;",
        "event",
        "Ll9/m;",
        "onEvent",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;",
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
.field public static final synthetic p:I


# instance fields
.field public b:Lgf/b;

.field public final c:Ll9/e;

.field public final d:Lff/b;

.field public e:Landroid/os/CountDownTimer;

.field public f:J

.field public g:Lbi/a;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->c:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->v()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string v0, "uuid"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->h:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "phoneNumber"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->k:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "token"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->j:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "operationType"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->l:Ljava/lang/String;

    .line 62
    .line 63
    const-string v0, "timeDuration"

    .line 64
    .line 65
    const-wide/16 v1, 0x0

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->m:J

    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->y()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->m:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 81
    .line 82
    const v0, 0x7f1302a0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->m:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->m:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 106
    .line 107
    new-instance v0, Lbe/d;

    .line 108
    .line 109
    const/16 v1, 0xb

    .line 110
    .line 111
    invoke-direct {v0, v1, p0}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->k:Ljava/lang/String;

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const/4 p1, 0x0

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 133
    :goto_1
    if-nez p1, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->j:Landroid/widget/TextView;

    .line 140
    .line 141
    new-array v2, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->k:Ljava/lang/String;

    .line 144
    .line 145
    aput-object v3, v2, v1

    .line 146
    .line 147
    const v3, 0x7f13025e

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->l:Landroid/widget/TextView;

    .line 162
    .line 163
    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    .line 165
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->k:Ljava/lang/String;

    .line 166
    .line 167
    aput-object v2, v0, v1

    .line 168
    .line 169
    const v1, 0x7f130260

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->j:Landroid/widget/TextView;

    .line 182
    .line 183
    const v0, 0x7f13025f

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->l:Landroid/widget/TextView;

    .line 198
    .line 199
    const v0, 0x7f130261

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->i:Landroid/widget/Button;

    .line 214
    .line 215
    new-instance v0, Lnf/a;

    .line 216
    .line 217
    const/16 v1, 0x11

    .line 218
    .line 219
    invoke-direct {v0, v1, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->g:Landroid/widget/Button;

    .line 230
    .line 231
    new-instance v0, Lzd/a;

    .line 232
    .line 233
    const/16 v1, 0x14

    .line 234
    .line 235
    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->x()V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->g:Lbi/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onEvent(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;)V
    .locals 2
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->v()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->x()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->y()V

    goto :goto_1

    :cond_0
    const-string p1, "warning"

    goto :goto_0

    :cond_1
    const-string p1, "error"

    :goto_0
    const v0, 0x7f13029c

    .line 2
    invoke-virtual {p0, v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->u(ILjava/lang/String;)V

    :goto_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSRequestOperation;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;)V
    .locals 3
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->d:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    const v0, 0x7f13029c

    const-string v1, "error"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isSuccess"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "operationType"

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->getException()Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    if-eqz v2, :cond_2

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v2, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;

    if-eqz v2, :cond_5

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "15"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "errorMessage"

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "action.sms.verification.block"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_3

    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->u(ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {p0, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->u(ILjava/lang/String;)V

    :goto_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->d:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->b:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAutofillHints([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->c:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    sget v0, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "mSMSVerificationBinding.smsVerificationContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060088

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, p1, v1}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_0
    return-void
.end method

.method public final u(ILjava/lang/String;)V
    .locals 4

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f060155

    if-eqz v0, :cond_0

    const p2, 0x7f060129

    const v0, 0x7f080140

    goto :goto_0

    :cond_0
    const-string v0, "warning"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f060154

    const v1, 0x7f060025

    const v0, 0x7f080141

    goto :goto_0

    :cond_1
    const p2, 0x7f060088

    const v0, 0x7f08013e

    :goto_0
    sget v2, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mSMSVerificationBinding.smsVerificationContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v2, p1, v0, p2, v1}, Lke/d$a;->d(Landroidx/constraintlayout/widget/ConstraintLayout;IIII)Lke/d;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_2
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lbi/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbi/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->g:Lbi/a;

    .line 7
    .line 8
    iput-object p0, v0, Lbi/a;->a:Lbi/a$a;

    .line 9
    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->g:Lbi/a;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->g:Lbi/a;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v0, Lg4/g;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lg4/g;-><init>(Landroid/app/Activity;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lg4/h;

    .line 44
    .line 45
    invoke-direct {v1}, Lg4/h;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2, v1}, Ln3/c;->c(ILo3/m;)Lh5/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method public final x()V
    .locals 5

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->d:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->c:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x493e0

    :goto_0
    iput-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->e:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->e:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;

    invoke-direct {v2, p0, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;J)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->e:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-wide v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    .line 2
    .line 3
    const/16 v2, 0x3e8

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    div-long v4, v0, v2

    .line 7
    .line 8
    long-to-int v5, v4

    .line 9
    div-int/lit8 v5, v5, 0x3c

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    long-to-int v1, v0

    .line 13
    rem-int/lit8 v1, v1, 0x3c

    .line 14
    .line 15
    const-string v0, "0"

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-ge v5, v2, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v5}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->k:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v3, 0x3a

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
