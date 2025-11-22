.class public final Lcom/google/crypto/tink/shaded/protobuf/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/crypto/tink/shaded/protobuf/a1;


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/i0;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/a1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/a1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/a1;->c:Lcom/google/crypto/tink/shaded/protobuf/a1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/a1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/i0;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/a1;->a:Lcom/google/crypto/tink/shaded/protobuf/i0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/e1;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/e1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/a1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 12
    .line 13
    if-nez v1, :cond_c

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/a1;->a:Lcom/google/crypto/tink/shaded/protobuf/i0;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/f1;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/f1;->a:Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/i0;->a:Lcom/google/crypto/tink/shaded/protobuf/p0;

    .line 50
    .line 51
    invoke-interface {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/o0;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/f1;->d:Lcom/google/crypto/tink/shaded/protobuf/l1;

    .line 70
    .line 71
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Lcom/google/crypto/tink/shaded/protobuf/r;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/o0;->b()Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/u0;

    .line 78
    .line 79
    invoke-direct {v4, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/u0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/q0;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/f1;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 84
    .line 85
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/s;->b:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/o0;->b()Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/u0;

    .line 94
    .line 95
    invoke-direct {v4, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/u0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/q0;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    move-object v1, v4

    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v5, 0x1

    .line 113
    const/4 v6, 0x0

    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/o0;->c()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-ne v2, v5, :cond_5

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    :cond_5
    if-eqz v3, :cond_6

    .line 124
    .line 125
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x0;->b:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 126
    .line 127
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/g0;->b:Lcom/google/crypto/tink/shaded/protobuf/g0$b;

    .line 128
    .line 129
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/f1;->d:Lcom/google/crypto/tink/shaded/protobuf/l1;

    .line 130
    .line 131
    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Lcom/google/crypto/tink/shaded/protobuf/r;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x0;->b:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 135
    .line 136
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/g0;->b:Lcom/google/crypto/tink/shaded/protobuf/g0$b;

    .line 137
    .line 138
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/f1;->d:Lcom/google/crypto/tink/shaded/protobuf/l1;

    .line 139
    .line 140
    move-object v5, v6

    .line 141
    :goto_2
    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/n0;->b:Lcom/google/crypto/tink/shaded/protobuf/m0;

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/o0;->c()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-ne v2, v5, :cond_8

    .line 149
    .line 150
    const/4 v3, 0x1

    .line 151
    :cond_8
    if-eqz v3, :cond_a

    .line 152
    .line 153
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x0;->a:Lcom/google/crypto/tink/shaded/protobuf/v0;

    .line 154
    .line 155
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/g0;->a:Lcom/google/crypto/tink/shaded/protobuf/g0$a;

    .line 156
    .line 157
    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/f1;->b:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 158
    .line 159
    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/s;->b:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    move-object v4, v5

    .line 164
    move-object v5, v7

    .line 165
    goto :goto_3

    .line 166
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_a
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x0;->a:Lcom/google/crypto/tink/shaded/protobuf/v0;

    .line 173
    .line 174
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/g0;->a:Lcom/google/crypto/tink/shaded/protobuf/g0$a;

    .line 175
    .line 176
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/f1;->c:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 177
    .line 178
    move-object v5, v6

    .line 179
    :goto_3
    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/n0;->a:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 180
    .line 181
    :goto_4
    move-object v9, v2

    .line 182
    move-object v10, v3

    .line 183
    move-object v11, v4

    .line 184
    move-object v12, v5

    .line 185
    move-object v13, v7

    .line 186
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/t0;->r:[I

    .line 187
    .line 188
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/c1;

    .line 189
    .line 190
    if-eqz v2, :cond_b

    .line 191
    .line 192
    move-object v8, v1

    .line 193
    check-cast v8, Lcom/google/crypto/tink/shaded/protobuf/c1;

    .line 194
    .line 195
    invoke-static/range {v8 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/t0;->w(Lcom/google/crypto/tink/shaded/protobuf/c1;Lcom/google/crypto/tink/shaded/protobuf/v0;Lcom/google/crypto/tink/shaded/protobuf/g0;Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/l0;)Lcom/google/crypto/tink/shaded/protobuf/t0;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    :goto_5
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 204
    .line 205
    if-eqz p1, :cond_c

    .line 206
    .line 207
    move-object v1, p1

    .line 208
    goto :goto_6

    .line 209
    :cond_b
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/i1;

    .line 210
    .line 211
    throw v6

    .line 212
    :cond_c
    :goto_6
    return-object v1

    .line 213
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    .line 214
    .line 215
    const-string v0, "messageType"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1
.end method
