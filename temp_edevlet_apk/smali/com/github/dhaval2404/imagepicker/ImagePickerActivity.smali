.class public final Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "imagepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lp2/f;

.field public b:Lp2/b;

.field public c:Lp2/e;

.field public d:Lp2/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x10b9

    .line 10
    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v0, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 14
    .line 15
    if-ne p2, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lp2/b;->b:Ljava/io/File;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "Uri.fromFile(mCameraFile)"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->s(Landroid/net/Uri;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lp2/b;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->u()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->a:Lp2/f;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    const/16 v4, 0x10a5

    .line 45
    .line 46
    if-ne p1, v4, :cond_5

    .line 47
    .line 48
    iget-object v4, v0, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 49
    .line 50
    if-ne p2, v1, :cond_4

    .line 51
    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object p3, v3

    .line 60
    :goto_1
    if-eqz p3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p3, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p3}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->s(Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const p3, 0x7f13008b

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3}, Lp2/a;->c(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {v4}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->u()V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->c:Lp2/e;

    .line 84
    .line 85
    if-eqz p3, :cond_e

    .line 86
    .line 87
    const/16 v0, 0x45

    .line 88
    .line 89
    if-ne p1, v0, :cond_d

    .line 90
    .line 91
    iget-object p1, p3, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 92
    .line 93
    if-ne p2, v1, :cond_c

    .line 94
    .line 95
    iget-object p2, p3, Lp2/e;->g:Ljava/io/File;

    .line 96
    .line 97
    if-eqz p2, :cond_b

    .line 98
    .line 99
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string p3, "Uri.fromFile(file)"

    .line 104
    .line 105
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p3, p1, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 112
    .line 113
    if-eqz p3, :cond_7

    .line 114
    .line 115
    iget-object v0, p3, Lp2/b;->b:Ljava/io/File;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    .line 121
    .line 122
    :cond_6
    iput-object v3, p3, Lp2/b;->b:Ljava/io/File;

    .line 123
    .line 124
    :cond_7
    iget-object p3, p1, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->d:Lp2/d;

    .line 125
    .line 126
    const-string v0, "mCompressionProvider"

    .line 127
    .line 128
    if-eqz p3, :cond_a

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Lp2/d;->e(Landroid/net/Uri;)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_9

    .line 135
    .line 136
    iget-object p1, p1, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->d:Lp2/d;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    new-instance p3, Lp2/c;

    .line 141
    .line 142
    invoke-direct {p3, p1}, Lp2/c;-><init>(Lp2/d;)V

    .line 143
    .line 144
    .line 145
    new-array p1, v2, [Landroid/net/Uri;

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    aput-object p2, p1, v0

    .line 149
    .line 150
    invoke-virtual {p3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v3

    .line 158
    :cond_9
    invoke-virtual {p1, p2}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->t(Landroid/net/Uri;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v3

    .line 166
    :cond_b
    const p1, 0x7f13008e

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p1}, Lp2/a;->c(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_c
    invoke-virtual {p3}, Lp2/e;->b()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->u()V

    .line 177
    .line 178
    .line 179
    :cond_d
    :goto_3
    return-void

    .line 180
    :cond_e
    const-string p1, "mCropProvider"

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v3
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->u()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp2/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lp2/e;-><init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->c:Lp2/e;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v2, "state.crop_file"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    check-cast v2, Ljava/io/File;

    .line 23
    .line 24
    iput-object v2, v0, Lp2/e;->g:Ljava/io/File;

    .line 25
    .line 26
    new-instance v0, Lp2/d;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lp2/d;-><init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->d:Lp2/d;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v2, "extra.image_provider"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :goto_1
    check-cast v0, Lo2/a;

    .line 48
    .line 49
    const/16 v2, 0x40

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v3, 0x1

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    if-eq v0, v3, :cond_3

    .line 62
    .line 63
    :goto_2
    const-string p1, "image_picker"

    .line 64
    .line 65
    const-string v0, "Image provider can not be null"

    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const p1, 0x7f130090

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "getString(R.string.error_task_cancelled)"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/content/Intent;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "extra.error"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_3
    new-instance v0, Lp2/b;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lp2/b;-><init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    const-string v1, "state.camera_file"

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_4
    check-cast v1, Ljava/io/File;

    .line 116
    .line 117
    iput-object v1, v0, Lp2/b;->b:Ljava/io/File;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_5
    iget-object p1, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 124
    .line 125
    if-eqz p1, :cond_d

    .line 126
    .line 127
    invoke-virtual {p1}, Lp2/b;->f()V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    new-instance v0, Lp2/f;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lp2/f;-><init>(Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->a:Lp2/f;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_7
    const-string p1, "context"

    .line 142
    .line 143
    iget-object v1, v0, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 144
    .line 145
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p1, "mimeTypes"

    .line 149
    .line 150
    iget-object v0, v0, Lp2/f;->b:[Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Landroid/content/Intent;

    .line 156
    .line 157
    const-string v4, "android.intent.action.OPEN_DOCUMENT"

    .line 158
    .line 159
    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "image/*"

    .line 163
    .line 164
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    array-length v5, v0

    .line 168
    const/4 v6, 0x0

    .line 169
    if-nez v5, :cond_8

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    goto :goto_3

    .line 173
    :cond_8
    const/4 v5, 0x0

    .line 174
    :goto_3
    xor-int/2addr v5, v3

    .line 175
    const-string v7, "android.intent.extra.MIME_TYPES"

    .line 176
    .line 177
    if-eqz v5, :cond_9

    .line 178
    .line 179
    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    :cond_9
    const-string v5, "android.intent.category.OPENABLE"

    .line 183
    .line 184
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    const/4 v2, 0x2

    .line 194
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v2, :cond_a

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_a
    new-instance p1, Landroid/content/Intent;

    .line 209
    .line 210
    const-string v2, "android.intent.action.PICK"

    .line 211
    .line 212
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    array-length v2, v0

    .line 219
    if-nez v2, :cond_b

    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    :cond_b
    xor-int v2, v3, v6

    .line 223
    .line 224
    if-eqz v2, :cond_c

    .line 225
    .line 226
    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    :cond_c
    :goto_4
    const/16 v0, 0x10a5

    .line 230
    .line 231
    invoke-virtual {v1, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    .line 233
    .line 234
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 235
    .line 236
    :cond_d
    :goto_6
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/16 p3, 0x10ba    # 6.0E-42f

    .line 19
    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    invoke-static {p2}, Lp2/b;->e(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lp2/b;->f()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const p1, 0x7f1301e5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p3, "getString(R.string.permission_camera_denied)"

    .line 40
    .line 41
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lp2/b;->b()V

    .line 45
    .line 46
    .line 47
    iget-object p2, p2, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p3, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "extra.error"

    .line 58
    .line 59
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x40

    .line 63
    .line 64
    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->b:Lp2/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "state.camera_file"

    .line 11
    .line 12
    iget-object v0, v0, Lp2/b;->b:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->c:Lp2/e;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v1, "state.crop_file"

    .line 25
    .line 26
    iget-object v0, v0, Lp2/e;->g:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p1, "mCropProvider"

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    throw p1
.end method

.method public final s(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->c:Lp2/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v2, v0, Lp2/a;->a:Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 7
    .line 8
    iget-boolean v3, v0, Lp2/e;->d:Z

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v3, :cond_9

    .line 13
    .line 14
    invoke-static {p1}, Lc5/w;->q(Landroid/net/Uri;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, v0, Lp2/e;->h:Ljava/io/File;

    .line 19
    .line 20
    invoke-static {v3, v1}, Lc5/w;->r(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v0, Lp2/e;->g:Ljava/io/File;

    .line 25
    .line 26
    if-eqz v3, :cond_8

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "extension"

    .line 42
    .line 43
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v6, "png"

    .line 47
    .line 48
    invoke-static {v1, v6, v5}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v6, "webp"

    .line 58
    .line 59
    invoke-static {v1, v6, v5}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v5, 0x1e

    .line 68
    .line 69
    if-lt v1, v5, :cond_2

    .line 70
    .line 71
    invoke-static {}, Landroidx/core/graphics/drawable/a;->c()Landroid/graphics/Bitmap$CompressFormat;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 80
    .line 81
    :goto_0
    const-string v5, "com.yalantis.ucrop.CompressionFormatName"

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lp2/e;->g:Ljava/io/File;

    .line 91
    .line 92
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v5, Landroid/content/Intent;

    .line 97
    .line 98
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v6, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v7, "com.yalantis.ucrop.InputUri"

    .line 107
    .line 108
    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "com.yalantis.ucrop.OutputUri"

    .line 112
    .line 113
    invoke-virtual {v6, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    int-to-float p1, v4

    .line 120
    iget v1, v0, Lp2/e;->e:F

    .line 121
    .line 122
    cmpl-float v3, v1, p1

    .line 123
    .line 124
    if-lez v3, :cond_4

    .line 125
    .line 126
    iget v3, v0, Lp2/e;->f:F

    .line 127
    .line 128
    cmpl-float p1, v3, p1

    .line 129
    .line 130
    if-lez p1, :cond_4

    .line 131
    .line 132
    const-string p1, "com.yalantis.ucrop.AspectRatioX"

    .line 133
    .line 134
    invoke-virtual {v6, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 135
    .line 136
    .line 137
    const-string p1, "com.yalantis.ucrop.AspectRatioY"

    .line 138
    .line 139
    invoke-virtual {v6, p1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 140
    .line 141
    .line 142
    :cond_4
    iget p1, v0, Lp2/e;->b:I

    .line 143
    .line 144
    if-lez p1, :cond_7

    .line 145
    .line 146
    iget v1, v0, Lp2/e;->c:I

    .line 147
    .line 148
    if-lez v1, :cond_7

    .line 149
    .line 150
    const/16 v3, 0xa

    .line 151
    .line 152
    if-ge p1, v3, :cond_5

    .line 153
    .line 154
    const/16 p1, 0xa

    .line 155
    .line 156
    :cond_5
    if-ge v1, v3, :cond_6

    .line 157
    .line 158
    const/16 v1, 0xa

    .line 159
    .line 160
    :cond_6
    const-string v3, "com.yalantis.ucrop.MaxSizeX"

    .line 161
    .line 162
    invoke-virtual {v6, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-string p1, "com.yalantis.ucrop.MaxSizeY"

    .line 166
    .line 167
    invoke-virtual {v6, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    :cond_7
    :try_start_0
    const-class p1, Lcom/yalantis/ucrop/UCropActivity;

    .line 171
    .line 172
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const/16 p1, 0x45

    .line 179
    .line 180
    invoke-virtual {v2, v5, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {v0}, Lp2/e;->b()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    new-instance v0, Landroid/content/Intent;

    .line 192
    .line 193
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "extra.error"

    .line 197
    .line 198
    const-string v3, "uCrop not specified in manifest file.Add UCropActivity in Manifest<activity\n    android:name=\"com.yalantis.ucrop.UCropActivity\"\n    android:screenOrientation=\"portrait\"\n    android:theme=\"@style/Theme.AppCompat.Light.NoActionBar\"/>"

    .line 199
    .line 200
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    const/16 v1, 0x40

    .line 204
    .line 205
    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_8
    :goto_1
    const-string p1, "e"

    .line 216
    .line 217
    const-string v1, "Failed to create crop image file"

    .line 218
    .line 219
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    const p1, 0x7f13008e

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Lp2/a;->c(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->d:Lp2/d;

    .line 230
    .line 231
    const-string v2, "mCompressionProvider"

    .line 232
    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    invoke-virtual {v0, p1}, Lp2/d;->e(Landroid/net/Uri;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_b

    .line 240
    .line 241
    iget-object v0, p0, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->d:Lp2/d;

    .line 242
    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    new-instance v1, Lp2/c;

    .line 246
    .line 247
    invoke-direct {v1, v0}, Lp2/c;-><init>(Lp2/d;)V

    .line 248
    .line 249
    .line 250
    new-array v0, v5, [Landroid/net/Uri;

    .line 251
    .line 252
    aput-object p1, v0, v4

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    :cond_b
    invoke-virtual {p0, p1}, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;->t(Landroid/net/Uri;)V

    .line 263
    .line 264
    .line 265
    :goto_2
    return-void

    .line 266
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    :cond_d
    const-string p1, "mCropProvider"

    .line 271
    .line 272
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v1
.end method

.method public final t(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lc5/v;->t(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra.file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f130090

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "context.getString(R.string.error_task_cancelled)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "extra.error"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
