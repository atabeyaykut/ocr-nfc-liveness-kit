.class public final Lcom/google/android/gms/internal/vision/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/vision/a3;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/f2;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/a3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/a3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/a3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/vision/f2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/f2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/a3;->a:Lcom/google/android/gms/internal/vision/f2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/d3;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/vision/d3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/a3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/vision/d3;

    .line 12
    .line 13
    if-nez v1, :cond_b

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/a3;->a:Lcom/google/android/gms/internal/vision/f2;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/vision/e3;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/vision/i1;

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
    sget-object v3, Lcom/google/android/gms/internal/vision/e3;->a:Ljava/lang/Class;

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
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/f2;->a:Lcom/google/android/gms/internal/vision/o2;

    .line 50
    .line 51
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/vision/o2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/l2;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/l2;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    sget-object v1, Lcom/google/android/gms/internal/vision/e3;->d:Lcom/google/android/gms/internal/vision/p3;

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/gms/internal/vision/z0;->a:Lcom/google/android/gms/internal/vision/x0;

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/l2;->c()Lcom/google/android/gms/internal/vision/n2;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/google/android/gms/internal/vision/t2;

    .line 78
    .line 79
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/vision/t2;-><init>(Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/n2;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/e3;->b:Lcom/google/android/gms/internal/vision/n3;

    .line 84
    .line 85
    sget-object v2, Lcom/google/android/gms/internal/vision/z0;->b:Lcom/google/android/gms/internal/vision/y0;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/l2;->c()Lcom/google/android/gms/internal/vision/n2;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-instance v4, Lcom/google/android/gms/internal/vision/t2;

    .line 94
    .line 95
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/vision/t2;-><init>(Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/n2;)V

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
    move-result v1

    .line 111
    const/4 v2, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/l2;->a()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-ne v1, v6, :cond_5

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    :cond_5
    if-eqz v2, :cond_6

    .line 124
    .line 125
    sget-object v1, Lcom/google/android/gms/internal/vision/w2;->b:Lcom/google/android/gms/internal/vision/x2;

    .line 126
    .line 127
    sget-object v2, Lcom/google/android/gms/internal/vision/z1;->b:Lcom/google/android/gms/internal/vision/d2;

    .line 128
    .line 129
    sget-object v4, Lcom/google/android/gms/internal/vision/e3;->d:Lcom/google/android/gms/internal/vision/p3;

    .line 130
    .line 131
    sget-object v5, Lcom/google/android/gms/internal/vision/z0;->a:Lcom/google/android/gms/internal/vision/x0;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/vision/w2;->b:Lcom/google/android/gms/internal/vision/x2;

    .line 135
    .line 136
    sget-object v2, Lcom/google/android/gms/internal/vision/z1;->b:Lcom/google/android/gms/internal/vision/d2;

    .line 137
    .line 138
    sget-object v4, Lcom/google/android/gms/internal/vision/e3;->d:Lcom/google/android/gms/internal/vision/p3;

    .line 139
    .line 140
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/vision/m2;->b:Lcom/google/android/gms/internal/vision/j2;

    .line 141
    .line 142
    move-object v7, v5

    .line 143
    move-object v8, v6

    .line 144
    move-object v5, v2

    .line 145
    move-object v6, v4

    .line 146
    move-object v4, v1

    .line 147
    goto :goto_4

    .line 148
    :cond_7
    invoke-interface {v3}, Lcom/google/android/gms/internal/vision/l2;->a()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ne v1, v6, :cond_8

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    :cond_8
    if-eqz v2, :cond_a

    .line 156
    .line 157
    sget-object v1, Lcom/google/android/gms/internal/vision/w2;->a:Lcom/google/android/gms/internal/vision/u2;

    .line 158
    .line 159
    sget-object v2, Lcom/google/android/gms/internal/vision/z1;->a:Lcom/google/android/gms/internal/vision/b2;

    .line 160
    .line 161
    sget-object v5, Lcom/google/android/gms/internal/vision/e3;->b:Lcom/google/android/gms/internal/vision/n3;

    .line 162
    .line 163
    sget-object v6, Lcom/google/android/gms/internal/vision/z0;->b:Lcom/google/android/gms/internal/vision/y0;

    .line 164
    .line 165
    if-eqz v6, :cond_9

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_a
    sget-object v1, Lcom/google/android/gms/internal/vision/w2;->a:Lcom/google/android/gms/internal/vision/u2;

    .line 175
    .line 176
    sget-object v2, Lcom/google/android/gms/internal/vision/z1;->a:Lcom/google/android/gms/internal/vision/b2;

    .line 177
    .line 178
    sget-object v4, Lcom/google/android/gms/internal/vision/e3;->c:Lcom/google/android/gms/internal/vision/n3;

    .line 179
    .line 180
    move-object v6, v5

    .line 181
    move-object v5, v4

    .line 182
    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/vision/m2;->a:Lcom/google/android/gms/internal/vision/k2;

    .line 183
    .line 184
    move-object v8, v4

    .line 185
    move-object v7, v6

    .line 186
    move-object v4, v1

    .line 187
    move-object v6, v5

    .line 188
    move-object v5, v2

    .line 189
    :goto_4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/r2;->l(Lcom/google/android/gms/internal/vision/l2;Lcom/google/android/gms/internal/vision/u2;Lcom/google/android/gms/internal/vision/z1;Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/k2;)Lcom/google/android/gms/internal/vision/r2;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :goto_5
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lcom/google/android/gms/internal/vision/d3;

    .line 198
    .line 199
    if-eqz p1, :cond_b

    .line 200
    .line 201
    move-object v1, p1

    .line 202
    :cond_b
    return-object v1

    .line 203
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 204
    .line 205
    const-string v0, "messageType"

    .line 206
    .line 207
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1
.end method
