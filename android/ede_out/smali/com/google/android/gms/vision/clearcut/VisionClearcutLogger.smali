.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zza:Lk3/a;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    new-instance v0, Lk3/a;

    invoke-direct {v0, p1}, Lk3/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lk3/a;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/r;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/i1;->r()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/vision/t0$a;

    .line 13
    .line 14
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/vision/t0$a;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/vision/i1;->b(Lcom/google/android/gms/internal/vision/t0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/t0$a;->f()I

    .line 21
    .line 22
    .line 23
    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 24
    if-nez p2, :cond_7

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ltz p1, :cond_5

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-le p1, v3, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lk3/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v2, Lk3/a$a;

    .line 44
    .line 45
    invoke-direct {v2, v0, v1}, Lk3/a$a;-><init>(Lk3/a;[B)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v2, Lk3/a$a;->e:Lcom/google/android/gms/internal/clearcut/f4;

    .line 49
    .line 50
    iput p1, v0, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 51
    .line 52
    invoke-virtual {v2}, Lk3/a$a;->a()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/r;->p()Lcom/google/android/gms/internal/vision/r$a;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/vision/w0;->c:Lcom/google/android/gms/internal/vision/w0;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-class v3, Lcom/google/android/gms/internal/vision/w0;

    .line 66
    .line 67
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/vision/w0;->c:Lcom/google/android/gms/internal/vision/w0;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/g1;->a()Lcom/google/android/gms/internal/vision/w0;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sput-object v4, Lcom/google/android/gms/internal/vision/w0;->c:Lcom/google/android/gms/internal/vision/w0;

    .line 78
    .line 79
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    move-object v3, v4

    .line 81
    :goto_1
    :try_start_4
    invoke-virtual {p1, v1, v0, v3}, Lcom/google/android/gms/internal/vision/i1$b;->c([BILcom/google/android/gms/internal/vision/w0;)Lcom/google/android/gms/internal/vision/i1$b;

    .line 82
    .line 83
    .line 84
    const-string v0, "Would have logged:\n%s"

    .line 85
    .line 86
    new-array v1, v2, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    aput-object p1, v1, p2

    .line 93
    .line 94
    const-string p1, "Vision"

    .line 95
    .line 96
    const/4 v2, 0x6

    .line 97
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    :try_start_7
    const-string v0, "Parsing error"

    .line 116
    .line 117
    new-array v1, p2, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {p1, v0, v1}, Li5/a;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catch_1
    move-exception p1

    .line 124
    sget-object v0, Lcom/google/android/gms/internal/vision/a;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/m0;->c(Ljava/lang/Exception;)V

    .line 127
    .line 128
    .line 129
    const-string v0, "Failed to log"

    .line 130
    .line 131
    new-array p2, p2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {p1, v0, p2}, Li5/a;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    :goto_2
    const-string v0, "Illegal event code: %d"

    .line 138
    .line 139
    new-array v1, v2, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    aput-object p1, v1, p2

    .line 146
    .line 147
    const-string p1, "Vision"

    .line 148
    .line 149
    const/4 p2, 0x4

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_6

    .line 155
    .line 156
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_6
    return-void

    .line 164
    :cond_7
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string p2, "Did not write as much data as expected."

    .line 167
    .line 168
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 172
    :catch_2
    move-exception p1

    .line 173
    new-instance p2, Ljava/lang/RuntimeException;

    .line 174
    .line 175
    const-class v0, Lcom/google/android/gms/internal/vision/r;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int/lit8 v1, v1, 0x3e

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0xa

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const-string v1, "Serializing "

    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, " to a byte array threw an IOException (should never happen)."

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw p2
.end method
