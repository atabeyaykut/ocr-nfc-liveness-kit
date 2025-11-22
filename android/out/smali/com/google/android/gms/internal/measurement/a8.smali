.class public final Lcom/google/android/gms/internal/measurement/a8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/a8;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/k7;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/a8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/a8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/a8;->c:Lcom/google/android/gms/internal/measurement/a8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/k7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/k7;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a8;->a:Lcom/google/android/gms/internal/measurement/k7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/d8;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/d8<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/measurement/d8;

    .line 12
    .line 13
    if-nez v1, :cond_d

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a8;->a:Lcom/google/android/gms/internal/measurement/k7;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/e8;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/measurement/q6;

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
    sget-object v3, Lcom/google/android/gms/internal/measurement/e8;->a:Ljava/lang/Class;

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
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/k7;->a:Lcom/google/android/gms/internal/measurement/j7;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/j7;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/p7;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p7;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/google/android/gms/internal/measurement/e8;->d:Lcom/google/android/gms/internal/measurement/q8;

    .line 70
    .line 71
    sget-object v3, Lcom/google/android/gms/internal/measurement/g6;->a:Lcom/google/android/gms/internal/measurement/f6;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p7;->a()Lcom/google/android/gms/internal/measurement/s7;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v4, Lcom/google/android/gms/internal/measurement/w7;

    .line 78
    .line 79
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/w7;-><init>(Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/s7;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/measurement/e8;->b:Lcom/google/android/gms/internal/measurement/o8;

    .line 84
    .line 85
    sget-object v3, Lcom/google/android/gms/internal/measurement/g6;->b:Lcom/google/android/gms/internal/measurement/e6;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p7;->a()Lcom/google/android/gms/internal/measurement/s7;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v4, Lcom/google/android/gms/internal/measurement/w7;

    .line 94
    .line 95
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/w7;-><init>(Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/s7;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    move-object v1, v4

    .line 99
    goto :goto_5

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_4
    const/4 v3, 0x0

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x1

    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p7;->c()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-ne v2, v6, :cond_5

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    :cond_5
    if-eqz v3, :cond_6

    .line 119
    .line 120
    sget v2, Lcom/google/android/gms/internal/measurement/y7;->a:I

    .line 121
    .line 122
    sget-object v2, Lcom/google/android/gms/internal/measurement/g7;->b:Lcom/google/android/gms/internal/measurement/f7;

    .line 123
    .line 124
    sget-object v3, Lcom/google/android/gms/internal/measurement/e8;->d:Lcom/google/android/gms/internal/measurement/q8;

    .line 125
    .line 126
    sget-object v4, Lcom/google/android/gms/internal/measurement/g6;->a:Lcom/google/android/gms/internal/measurement/f6;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    sget v2, Lcom/google/android/gms/internal/measurement/y7;->a:I

    .line 130
    .line 131
    sget-object v2, Lcom/google/android/gms/internal/measurement/g7;->b:Lcom/google/android/gms/internal/measurement/f7;

    .line 132
    .line 133
    sget-object v3, Lcom/google/android/gms/internal/measurement/e8;->d:Lcom/google/android/gms/internal/measurement/q8;

    .line 134
    .line 135
    move-object v4, v5

    .line 136
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/measurement/o7;->b:Lcom/google/android/gms/internal/measurement/n7;

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p7;->c()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-ne v2, v6, :cond_8

    .line 144
    .line 145
    const/4 v3, 0x1

    .line 146
    :cond_8
    if-eqz v3, :cond_a

    .line 147
    .line 148
    sget v2, Lcom/google/android/gms/internal/measurement/y7;->a:I

    .line 149
    .line 150
    sget-object v2, Lcom/google/android/gms/internal/measurement/g7;->a:Lcom/google/android/gms/internal/measurement/e7;

    .line 151
    .line 152
    sget-object v3, Lcom/google/android/gms/internal/measurement/e8;->b:Lcom/google/android/gms/internal/measurement/o8;

    .line 153
    .line 154
    sget-object v6, Lcom/google/android/gms/internal/measurement/g6;->b:Lcom/google/android/gms/internal/measurement/e6;

    .line 155
    .line 156
    if-eqz v6, :cond_9

    .line 157
    .line 158
    move-object v4, v6

    .line 159
    goto :goto_3

    .line 160
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_a
    sget v2, Lcom/google/android/gms/internal/measurement/y7;->a:I

    .line 167
    .line 168
    sget-object v2, Lcom/google/android/gms/internal/measurement/g7;->a:Lcom/google/android/gms/internal/measurement/e7;

    .line 169
    .line 170
    sget-object v3, Lcom/google/android/gms/internal/measurement/e8;->c:Lcom/google/android/gms/internal/measurement/o8;

    .line 171
    .line 172
    move-object v4, v5

    .line 173
    :goto_3
    sget-object v6, Lcom/google/android/gms/internal/measurement/o7;->a:Lcom/google/android/gms/internal/measurement/n7;

    .line 174
    .line 175
    :goto_4
    sget-object v7, Lcom/google/android/gms/internal/measurement/v7;->n:[I

    .line 176
    .line 177
    instance-of v7, v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 178
    .line 179
    if-eqz v7, :cond_c

    .line 180
    .line 181
    check-cast v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 182
    .line 183
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/gms/internal/measurement/v7;->z(Lcom/google/android/gms/internal/measurement/c8;Lcom/google/android/gms/internal/measurement/g7;Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/n7;)Lcom/google/android/gms/internal/measurement/v7;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_5
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcom/google/android/gms/internal/measurement/d8;

    .line 192
    .line 193
    if-nez p1, :cond_b

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_b
    return-object p1

    .line 197
    :cond_c
    check-cast v1, Lcom/google/android/gms/internal/measurement/m8;

    .line 198
    .line 199
    throw v5

    .line 200
    :cond_d
    :goto_6
    return-object v1

    .line 201
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 202
    .line 203
    const-string v0, "messageType"

    .line 204
    .line 205
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
.end method
