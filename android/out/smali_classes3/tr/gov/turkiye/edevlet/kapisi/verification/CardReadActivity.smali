.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;
.super Lu8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$a;,
        Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;",
        "Lu8/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;",
        "event",
        "Ll9/m;",
        "onEvent",
        "<init>",
        "()V",
        "a",
        "b",
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
.field public static final synthetic r:I


# instance fields
.field public b:Lgf/b;

.field public final c:Ll9/e;

.field public final d:Lff/b;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lv/e;

.field public p:Lie/a;

.field public q:Lie/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$a;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$c;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$c;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->c:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "uuid"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->e:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "token"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->f:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "challenge"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->g:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "serialNo"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->h:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "birthDate"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->j:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "validationDate"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->k:Ljava/lang/String;

    .line 76
    .line 77
    const-string v0, "phoneNumber"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->l:Ljava/lang/String;

    .line 84
    .line 85
    const-string v0, "countryCode"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->m:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 98
    .line 99
    const v0, 0x7f1302a0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 123
    .line 124
    new-instance v0, Lie/d;

    .line 125
    .line 126
    const/16 v1, 0x12

    .line 127
    .line 128
    invoke-direct {v0, v1, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    const-string p1, "layout_inflater"

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 141
    .line 142
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    check-cast p1, Landroid/view/LayoutInflater;

    .line 146
    .line 147
    const v0, 0x7f0d0109

    .line 148
    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "inflater.inflate(R.layout.read_card_dialog, null)"

    .line 156
    .line 157
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lv/e;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 166
    .line 167
    invoke-static {v0, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 171
    .line 172
    if-eqz p1, :cond_0

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0}, Lv/e;->b(Z)V

    .line 176
    .line 177
    .line 178
    :cond_0
    new-instance p1, Lxh/c;

    .line 179
    .line 180
    invoke-direct {p1}, Lxh/c;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lie/a;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Lie/a;-><init>(Lxh/c;)V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->p:Lie/a;

    .line 189
    .line 190
    new-instance p1, Lxh/d;

    .line 191
    .line 192
    invoke-direct {p1}, Lxh/d;-><init>()V

    .line 193
    .line 194
    .line 195
    new-instance v0, Lie/b;

    .line 196
    .line 197
    invoke-direct {v0, p1}, Lie/b;-><init>(Lxh/d;)V

    .line 198
    .line 199
    .line 200
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->q:Lie/b;

    .line 201
    .line 202
    return-void
.end method

.method public final onEvent(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;)V
    .locals 7
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->p:Lie/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->q:Lie/b;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 20
    .line 21
    .line 22
    :cond_2
    const v0, 0x7f13029c

    .line 23
    .line 24
    .line 25
    const-string v1, "error"

    .line 26
    .line 27
    if-eqz p1, :cond_10

    .line 28
    .line 29
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->isSuccess()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_d

    .line 35
    .line 36
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;->getSmsRequired()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v0, v3

    .line 52
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "uuid"

    .line 58
    .line 59
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v2, "token"

    .line 65
    .line 66
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->f:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x0

    .line 78
    const-string v4, "smsRequired"

    .line 79
    .line 80
    if-eqz v0, :cond_c

    .line 81
    .line 82
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;->getSmsDuration()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    int-to-long v5, v0

    .line 93
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move-object v0, v3

    .line 99
    :goto_1
    const/4 v5, 0x1

    .line 100
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v4, "timeDuration"

    .line 104
    .line 105
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->l:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const/4 v0, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 122
    :goto_3
    if-nez v0, :cond_9

    .line 123
    .line 124
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->m:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    :cond_7
    const/4 v2, 0x1

    .line 135
    :cond_8
    if-nez v2, :cond_9

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->m:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->l:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_5

    .line 157
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;->getCountryCode()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    goto :goto_4

    .line 173
    :cond_a
    move-object v2, v3

    .line 174
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_b

    .line 182
    .line 183
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationData;->getPhoneNumber()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_5
    const-string v0, "phoneNumber"

    .line 195
    .line 196
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_c
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    :goto_6
    const/4 p1, -0x1

    .line 204
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_d
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;->getException()Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_e

    .line 216
    .line 217
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    :cond_e
    instance-of p1, v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 222
    .line 223
    if-eqz p1, :cond_f

    .line 224
    .line 225
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 226
    .line 227
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    sget v0, Lke/d;->a:I

    .line 232
    .line 233
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 238
    .line 239
    const-string v1, "mIDScanActivityBinding.cardScanContainer"

    .line 240
    .line 241
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const v1, 0x7f060088

    .line 245
    .line 246
    .line 247
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v0, p1, v1}, Lke/d$a;->b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-eqz p1, :cond_11

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_f
    invoke-virtual {p0, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->t(ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_10
    invoke-virtual {p0, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->t(ILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_11
    :goto_7
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "android.nfc.action.TECH_DISCOVERED"

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->p:Lie/a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-class v2, Lie/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "android.nfc.extra.TAG"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/nfc/Tag;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "tag!!.techList"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    array-length v1, v0

    .line 66
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "android.nfc.tech.IsoDep"

    .line 75
    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    new-instance v4, Lorg/jmrtd/BACKey;

    .line 83
    .line 84
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->h:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->j:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->k:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v4, v0, v1, v2}, Lorg/jmrtd/BACKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const/16 p1, 0x1388

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    .line 111
    .line 112
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->e:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v6, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->f:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v7, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->g:Ljava/lang/String;

    .line 117
    .line 118
    move-object v1, p1

    .line 119
    move-object v2, p0

    .line 120
    invoke-direct/range {v1 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;Landroid/nfc/tech/IsoDep;Lorg/jmrtd/BACKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-direct {v0, p1, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Lp9/d;)V

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x3

    .line 130
    const/4 v3, 0x0

    .line 131
    invoke-static {p1, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 136
    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const/high16 v2, 0x20000000

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v3, 0x1f

    .line 35
    .line 36
    if-lt v2, v3, :cond_0

    .line 37
    .line 38
    const/high16 v2, 0xa000000

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/high16 v2, 0x8000000

    .line 42
    .line 43
    :goto_0
    const/4 v3, 0x0

    .line 44
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x1

    .line 49
    new-array v2, v2, [[Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "android.nfc.tech.IsoDep"

    .line 52
    .line 53
    filled-new-array {v4}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    aput-object v4, v2, v3

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    new-instance v0, Lxh/a;

    .line 73
    .line 74
    invoke-direct {v0}, Lxh/a;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lie/e;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lie/e;-><init>(Lie/e$a;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Lxh/b;

    .line 84
    .line 85
    invoke-direct {v0}, Lxh/b;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lie/c;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lie/c;-><init>(Lie/c$a;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-class v2, Lie/e;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->d:Lff/b;

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method public final s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->c:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    return-object v0
.end method

.method public final t(ILjava/lang/String;)V
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

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardReadBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "mIDScanActivityBinding.cardScanContainer"

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
