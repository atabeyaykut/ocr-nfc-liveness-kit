.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Li7/g;

    .line 7
    .line 8
    invoke-static {v1}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lc6/o;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    const-class v5, Li7/d;

    .line 17
    .line 18
    invoke-direct {v2, v3, v4, v5}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lb7/f;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v2, v5}, Lb7/f;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Lc6/d$a;->e:Lc6/h;

    .line 31
    .line 32
    invoke-virtual {v1}, Lc6/d$a;->b()Lc6/d;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-class v1, Ly6/e;

    .line 40
    .line 41
    invoke-static {v1}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lc6/o;

    .line 46
    .line 47
    const-class v6, Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v2, v5, v4, v6}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lc6/o;

    .line 56
    .line 57
    const-class v5, Ly6/d;

    .line 58
    .line 59
    invoke-direct {v2, v3, v4, v5}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Landroidx/camera/core/impl/utils/f;

    .line 66
    .line 67
    invoke-direct {v2}, Landroidx/camera/core/impl/utils/f;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, v1, Lc6/d$a;->e:Lc6/h;

    .line 71
    .line 72
    invoke-virtual {v1}, Lc6/d$a;->b()Lc6/d;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "fire-android"

    .line 86
    .line 87
    invoke-static {v2, v1}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    const-string v1, "fire-core"

    .line 95
    .line 96
    const-string v2, "20.0.0"

    .line 97
    .line 98
    invoke-static {v1, v2}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "device-name"

    .line 112
    .line 113
    invoke-static {v2, v1}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "device-model"

    .line 127
    .line 128
    invoke-static {v2, v1}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string v2, "device-brand"

    .line 142
    .line 143
    invoke-static {v2, v1}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Landroidx/camera/core/impl/utils/f;

    .line 151
    .line 152
    invoke-direct {v1}, Landroidx/camera/core/impl/utils/f;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "android-target-sdk"

    .line 156
    .line 157
    invoke-static {v2, v1}, Li7/f;->b(Ljava/lang/String;Li7/f$a;)Lc6/d;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    new-instance v1, Landroidx/constraintlayout/core/state/a;

    .line 165
    .line 166
    invoke-direct {v1}, Landroidx/constraintlayout/core/state/a;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v2, "android-min-sdk"

    .line 170
    .line 171
    invoke-static {v2, v1}, Li7/f;->b(Ljava/lang/String;Li7/f$a;)Lc6/d;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v1, Landroidx/browser/browseractions/b;

    .line 179
    .line 180
    invoke-direct {v1, v3}, Landroidx/browser/browseractions/b;-><init>(I)V

    .line 181
    .line 182
    .line 183
    const-string v2, "android-platform"

    .line 184
    .line 185
    invoke-static {v2, v1}, Li7/f;->b(Ljava/lang/String;Li7/f$a;)Lc6/d;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    new-instance v1, Landroidx/camera/core/impl/a;

    .line 193
    .line 194
    invoke-direct {v1}, Landroidx/camera/core/impl/a;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v2, "android-installer"

    .line 198
    .line 199
    invoke-static {v2, v1}, Li7/f;->b(Ljava/lang/String;Li7/f$a;)Lc6/d;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :try_start_0
    sget-object v1, Ll9/d;->e:Ll9/d;

    .line 207
    .line 208
    invoke-virtual {v1}, Ll9/d;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 213
    :catch_0
    const/4 v1, 0x0

    .line 214
    :goto_0
    if-eqz v1, :cond_0

    .line 215
    .line 216
    const-string v2, "kotlin"

    .line 217
    .line 218
    invoke-static {v2, v1}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_0
    return-object v0
.end method
