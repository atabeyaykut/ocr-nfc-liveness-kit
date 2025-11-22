.class public final La8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile b:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:La8/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, La8/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, La8/a;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, La8/a;->e:I

    const/4 p1, 0x0

    iput p1, p0, La8/a;->f:I

    const/4 p1, -0x1

    iput p1, p0, La8/a;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;III)V
    .locals 1
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La8/b;

    invoke-direct {v0, p1}, La8/b;-><init>(Landroid/media/Image;)V

    iput-object v0, p0, La8/a;->c:La8/b;

    iput p2, p0, La8/a;->d:I

    iput p3, p0, La8/a;->e:I

    iput p4, p0, La8/a;->f:I

    const/16 p1, 0x23

    iput p1, p0, La8/a;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, La8/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, La8/a;->d:I

    iput p3, p0, La8/a;->e:I

    iput p4, p0, La8/a;->f:I

    const/16 p1, 0x11

    iput p1, p0, La8/a;->g:I

    return-void
.end method

.method public static a(Landroid/media/Image;I)La8/a;
    .locals 10
    .param p0    # Landroid/media/Image;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x5a

    .line 10
    .line 11
    if-eq p1, v2, :cond_1

    .line 12
    .line 13
    const/16 v2, 0xb4

    .line 14
    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x10e

    .line 18
    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    const/16 v5, 0x10e

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v5, p1

    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v5, p1

    .line 29
    const/4 p1, 0x1

    .line 30
    :goto_0
    const-string v2, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    .line 31
    .line 32
    invoke-static {p1, v2}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/16 v2, 0x100

    .line 40
    .line 41
    if-eq p1, v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v3, 0x23

    .line 48
    .line 49
    if-ne p1, v3, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 55
    :goto_2
    const-string v3, "Only JPEG and YUV_420_888 are supported now"

    .line 56
    .line 57
    invoke-static {p1, v3}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ne v4, v2, :cond_6

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    aget-object p1, p1, v0

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    new-instance v4, La8/a;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-ne v8, v2, :cond_4

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/4 v2, 0x0

    .line 95
    :goto_3
    invoke-static {v2, v3}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    array-length v3, v2

    .line 105
    if-ne v3, v1, :cond_5

    .line 106
    .line 107
    aget-object v1, v2, v0

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    new-array v3, v2, [B

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-static {v0, v5, v1, v2}, Lb8/c;->e(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {v4, v0}, La8/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string p1, "Unexpected image format, JPEG should have exactly 1 image plane"

    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_6
    array-length v1, p1

    .line 154
    const/4 v2, 0x0

    .line 155
    :goto_4
    if-ge v2, v1, :cond_8

    .line 156
    .line 157
    aget-object v3, p1, v2

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 170
    .line 171
    .line 172
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    new-instance v4, La8/a;

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-direct {v4, p0, p1, v1, v5}, La8/a;-><init>(Landroid/media/Image;III)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aget-object p1, p1, v0

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    mul-int/lit8 p1, p1, 0x3

    .line 203
    .line 204
    div-int/lit8 p1, p1, 0x2

    .line 205
    .line 206
    :goto_5
    move-object v9, v4

    .line 207
    move v4, p1

    .line 208
    move-object p1, v9

    .line 209
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    const/4 v1, 0x5

    .line 214
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-static/range {v0 .. v7}, La8/a;->c(IIIIIIJ)V

    .line 223
    .line 224
    .line 225
    return-object p1
.end method

.method public static c(IIIIIIJ)V
    .locals 15

    move v0, p0

    move/from16 v1, p1

    .line 1
    const-class v2, Lr4/r6;

    monitor-enter v2

    .line 2
    :try_start_0
    new-instance v3, Lsf/k;

    invoke-direct {v3}, Lsf/k;-><init>()V

    const-string v4, "vision-common"

    .line 3
    iput-object v4, v3, Lsf/k;->a:Ljava/lang/Object;

    .line 4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lsf/k;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lsf/k;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3}, Lsf/k;->a()Lr4/h6;

    move-result-object v3

    invoke-static {v3}, Lr4/r6;->b(Lr4/h6;)Lr4/m6;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, p6

    .line 8
    sget-object v2, Lr4/q4;->b:Lr4/q4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, v3, Lr4/m6;->h:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v7, v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x1e

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gtz v14, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lr4/j4;

    invoke-direct {v2}, Lr4/j4;-><init>()V

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    const/16 v7, 0x23

    if-eq v0, v7, :cond_5

    const v7, 0x32315659

    if-eq v0, v7, :cond_4

    const/16 v7, 0x10

    if-eq v0, v7, :cond_3

    const/16 v7, 0x11

    if-eq v0, v7, :cond_2

    sget-object v0, Lr4/f4;->b:Lr4/f4;

    goto :goto_1

    :cond_2
    sget-object v0, Lr4/f4;->d:Lr4/f4;

    goto :goto_1

    :cond_3
    sget-object v0, Lr4/f4;->c:Lr4/f4;

    goto :goto_1

    :cond_4
    sget-object v0, Lr4/f4;->e:Lr4/f4;

    goto :goto_1

    :cond_5
    sget-object v0, Lr4/f4;->f:Lr4/f4;

    goto :goto_1

    :cond_6
    sget-object v0, Lr4/f4;->g:Lr4/f4;

    .line 10
    :goto_1
    iput-object v0, v2, Lr4/j4;->c:Ljava/lang/Object;

    if-eq v1, v4, :cond_a

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    .line 11
    sget-object v0, Lr4/k4;->f:Lr4/k4;

    goto :goto_2

    :cond_7
    sget-object v0, Lr4/k4;->e:Lr4/k4;

    goto :goto_2

    :cond_8
    sget-object v0, Lr4/k4;->d:Lr4/k4;

    goto :goto_2

    :cond_9
    sget-object v0, Lr4/k4;->c:Lr4/k4;

    goto :goto_2

    :cond_a
    sget-object v0, Lr4/k4;->b:Lr4/k4;

    .line 12
    :goto_2
    iput-object v0, v2, Lr4/j4;->b:Ljava/lang/Object;

    .line 13
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lr4/j4;->d:Ljava/lang/Object;

    .line 15
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lr4/j4;->f:Ljava/lang/Object;

    .line 17
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lr4/j4;->e:Ljava/lang/Object;

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lr4/j4;->a:Ljava/lang/Object;

    .line 21
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lr4/j4;->g:Ljava/lang/Object;

    .line 23
    new-instance v0, Lr4/l4;

    invoke-direct {v0, v2}, Lr4/l4;-><init>(Lr4/j4;)V

    .line 24
    new-instance v1, Lpf/k;

    invoke-direct {v1}, Lpf/k;-><init>()V

    .line 25
    iput-object v0, v1, Lpf/k;->c:Ljava/lang/Object;

    .line 26
    new-instance v0, Lp4/c7;

    invoke-direct {v0, v1}, Lp4/c7;-><init>(Lpf/k;)V

    .line 27
    iget-object v1, v3, Lr4/m6;->e:Lh5/z;

    invoke-virtual {v1}, Lh5/z;->m()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lh5/z;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    .line 28
    :cond_b
    sget-object v1, Lr3/n;->c:Lr3/n;

    .line 29
    iget-object v2, v3, Lr4/m6;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr3/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    sget-object v2, Lv7/g;->b:Ljava/lang/Object;

    sget-object v2, Lv7/q;->a:Lv7/q;

    new-instance v4, Lr4/k6;

    invoke-direct {v4, v3, v0, v1}, Lr4/k6;-><init>(Lr4/m6;Lp4/c7;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lv7/q;->execute(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final b()[Landroid/media/Image$Plane;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, La8/a;->c:La8/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, La8/a;->c:La8/b;

    .line 8
    .line 9
    iget-object v0, v0, La8/b;->a:Landroid/media/Image;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
