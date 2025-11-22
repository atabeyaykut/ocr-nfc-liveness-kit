.class public Lgd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgd/g$a;
    }
.end annotation


# static fields
.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:[C


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public p:Ljava/lang/Long;

.field public q:[B

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/lang/Integer;

.field public v:Ljava/lang/Integer;

.field public w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Boolean;

.field public y:Ljava/lang/String;

.field public z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "i\\:(\\d+)\\-(\\d+)([blv]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->B:Ljava/util/regex/Pattern;

    const-string v0, "m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->C:Ljava/util/regex/Pattern;

    const-string v0, "s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f\\-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->D:Ljava/util/regex/Pattern;

    const-string v0, "d\\:(\\d+)\\-(\\d+)([bl]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->E:Ljava/util/regex/Pattern;

    const-string v0, "p\\:(\\d+)?\\-(\\d+)?\\:?([\\-\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->F:Ljava/util/regex/Pattern;

    const-string v0, "x"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/g;->G:Ljava/util/regex/Pattern;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgd/g;->H:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lgd/g;->q:[B

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lgd/g;->x:Ljava/lang/Boolean;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x4c

    aput v2, v1, v0

    iput-object v1, p0, Lgd/g;->z:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgd/g;->A:Ljava/util/ArrayList;

    return-void
.end method

.method public static a([BIIZ)Ljava/lang/String;
    .locals 7

    sub-int/2addr p2, p1

    add-int/lit8 v0, p2, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-gt p3, p2, :cond_1

    add-int v3, p1, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p3

    aget-byte v3, p0, v3

    aput-byte v3, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_1
    if-gt p3, p2, :cond_1

    add-int v3, p1, p3

    aget-byte v3, p0, v3

    aput-byte v3, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x5

    if-ge v0, p0, :cond_3

    const-wide/16 p0, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    sub-int p2, v0, v2

    add-int/lit8 p2, p2, -0x1

    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long p2, p2

    int-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long p2, p2, v3

    add-long/2addr p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v1}, Lgd/g;->d([B)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    if-ne v0, p1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x8

    invoke-virtual {p0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {p0, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "0x"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I[B[B)Z
    .locals 5

    array-length v0, p2

    array-length v1, p1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p0, v1

    aget-byte v3, p1, v3

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x4

    sget-object v5, Lgd/g;->H:[C

    aget-char v4, v5, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static g(JIZ)[B
    .locals 7

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    sub-int v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v2

    int-to-long v5, v2

    and-long v2, p0, v3

    long-to-int v4, v5

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public e(IJLandroid/bluetooth/BluetoothDevice;[B)Lgd/c;
    .locals 7

    new-instance v6, Lgd/c;

    invoke-direct {v6}, Lgd/c;-><init>()V

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move-object v3, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lgd/g;->f([BILandroid/bluetooth/BluetoothDevice;JLgd/c;)Lgd/c;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    check-cast p1, Lgd/g;

    iget-object v0, p1, Lgd/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgd/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lgd/g;->y:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lgd/g;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f([BILandroid/bluetooth/BluetoothDevice;JLgd/c;)Lgd/c;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    new-instance v4, Lcom/google/android/gms/internal/clearcut/b0;

    .line 8
    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/clearcut/b0;-><init>([B)V

    .line 12
    .line 13
    .line 14
    new-instance v6, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v7, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v4, v4, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    const/4 v10, 0x7

    .line 42
    const/16 v11, 0x16

    .line 43
    .line 44
    const/16 v12, 0x21

    .line 45
    .line 46
    const/4 v13, -0x1

    .line 47
    const-string v14, "BeaconParser"

    .line 48
    .line 49
    if-eqz v9, :cond_6

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    check-cast v9, Lnd/d;

    .line 56
    .line 57
    iget-byte v15, v9, Lnd/d;->a:B

    .line 58
    .line 59
    if-ne v15, v11, :cond_1

    .line 60
    .line 61
    iget-object v11, v0, Lgd/g;->p:Ljava/lang/Long;

    .line 62
    .line 63
    if-nez v11, :cond_4

    .line 64
    .line 65
    :cond_1
    if-ne v15, v12, :cond_2

    .line 66
    .line 67
    iget-object v11, v0, Lgd/g;->q:[B

    .line 68
    .line 69
    array-length v11, v11

    .line 70
    if-nez v11, :cond_4

    .line 71
    .line 72
    :cond_2
    if-ne v15, v10, :cond_3

    .line 73
    .line 74
    iget-object v10, v0, Lgd/g;->q:[B

    .line 75
    .line 76
    array-length v10, v10

    .line 77
    if-nez v10, :cond_4

    .line 78
    .line 79
    :cond_3
    if-ne v15, v13, :cond_5

    .line 80
    .line 81
    :cond_4
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    sget-boolean v10, Lid/b;->b:Z

    .line 85
    .line 86
    if-eqz v10, :cond_0

    .line 87
    .line 88
    const/4 v10, 0x4

    .line 89
    new-array v10, v10, [Ljava/lang/Object;

    .line 90
    .line 91
    iget-byte v11, v9, Lnd/d;->a:B

    .line 92
    .line 93
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    const/4 v12, 0x0

    .line 98
    aput-object v11, v10, v12

    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lgd/g;->d([B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    const/4 v12, 0x1

    .line 105
    aput-object v11, v10, v12

    .line 106
    .line 107
    iget v11, v9, Lnd/d;->c:I

    .line 108
    .line 109
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const/4 v12, 0x2

    .line 114
    aput-object v11, v10, v12

    .line 115
    .line 116
    iget v9, v9, Lnd/d;->d:I

    .line 117
    .line 118
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const/4 v11, 0x3

    .line 123
    aput-object v9, v10, v11

    .line 124
    .line 125
    const-string v9, "Processing pdu type %02X: %s with startIndex: %d, endIndex: %d"

    .line 126
    .line 127
    invoke-static {v14, v9, v10}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    sget-boolean v9, Lid/b;->b:Z

    .line 132
    .line 133
    if-eqz v9, :cond_0

    .line 134
    .line 135
    const/4 v9, 0x1

    .line 136
    new-array v9, v9, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    const/4 v11, 0x0

    .line 143
    aput-object v10, v9, v11

    .line 144
    .line 145
    const-string v10, "Ignoring pdu type %02X"

    .line 146
    .line 147
    invoke-static {v14, v10, v9}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const/4 v4, 0x0

    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_8

    .line 157
    .line 158
    sget-boolean v6, Lid/b;->b:Z

    .line 159
    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    const-string v6, "No PDUs to process in this packet."

    .line 163
    .line 164
    new-array v9, v4, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-static {v14, v6, v9}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    const/4 v6, 0x0

    .line 170
    const/4 v9, 0x0

    .line 171
    goto/16 :goto_14

    .line 172
    .line 173
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    const/4 v4, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_2d

    .line 188
    .line 189
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    check-cast v10, Lnd/d;

    .line 194
    .line 195
    new-array v9, v9, [B

    .line 196
    .line 197
    iget-object v13, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 198
    .line 199
    if-eqz v13, :cond_a

    .line 200
    .line 201
    iget-object v13, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-ltz v13, :cond_a

    .line 208
    .line 209
    iget-object v9, v0, Lgd/g;->b:Ljava/lang/Long;

    .line 210
    .line 211
    if-nez v9, :cond_9

    .line 212
    .line 213
    const-wide/16 v15, -0x1

    .line 214
    .line 215
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 220
    .line 221
    .line 222
    move-result-wide v1

    .line 223
    iget-object v9, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    iget-object v13, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    sub-int/2addr v9, v13

    .line 236
    const/4 v13, 0x1

    .line 237
    add-int/2addr v9, v13

    .line 238
    invoke-static {v1, v2, v9, v13}, Lgd/g;->g(JIZ)[B

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    :cond_a
    iget-object v1, v0, Lgd/g;->q:[B

    .line 243
    .line 244
    iget-object v2, v0, Lgd/g;->p:Ljava/lang/Long;

    .line 245
    .line 246
    if-eqz v2, :cond_b

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 249
    .line 250
    .line 251
    move-result-wide v1

    .line 252
    iget-object v13, v0, Lgd/g;->n:Ljava/lang/Integer;

    .line 253
    .line 254
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    iget-object v15, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 259
    .line 260
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    sub-int/2addr v13, v15

    .line 265
    add-int/lit8 v13, v13, 0x1

    .line 266
    .line 267
    const/4 v15, 0x0

    .line 268
    invoke-static {v1, v2, v13, v15}, Lgd/g;->g(JIZ)[B

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    :cond_b
    iget v2, v10, Lnd/d;->c:I

    .line 273
    .line 274
    array-length v13, v1

    .line 275
    if-nez v13, :cond_d

    .line 276
    .line 277
    iget-object v12, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 278
    .line 279
    if-eqz v12, :cond_c

    .line 280
    .line 281
    iget-object v12, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    add-int/2addr v12, v2

    .line 288
    invoke-static {v12, v5, v9}, Lgd/g;->c(I[B[B)Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    if-eqz v12, :cond_c

    .line 293
    .line 294
    move/from16 p1, v4

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_c
    move/from16 p1, v4

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_d
    iget-byte v13, v10, Lnd/d;->a:B

    .line 301
    .line 302
    const/16 v15, 0x10

    .line 303
    .line 304
    if-ne v13, v12, :cond_e

    .line 305
    .line 306
    array-length v12, v1

    .line 307
    if-ne v12, v15, :cond_e

    .line 308
    .line 309
    const/4 v12, 0x7

    .line 310
    const/4 v15, 0x1

    .line 311
    goto :goto_2

    .line 312
    :cond_e
    const/4 v12, 0x7

    .line 313
    const/4 v15, 0x0

    .line 314
    :goto_2
    if-ne v13, v12, :cond_f

    .line 315
    .line 316
    array-length v12, v1

    .line 317
    move/from16 p1, v4

    .line 318
    .line 319
    const/16 v4, 0x10

    .line 320
    .line 321
    if-ne v12, v4, :cond_10

    .line 322
    .line 323
    const/16 v4, 0x16

    .line 324
    .line 325
    const/4 v15, 0x1

    .line 326
    goto :goto_3

    .line 327
    :cond_f
    move/from16 p1, v4

    .line 328
    .line 329
    :cond_10
    const/16 v4, 0x16

    .line 330
    .line 331
    :goto_3
    if-ne v13, v4, :cond_11

    .line 332
    .line 333
    array-length v4, v1

    .line 334
    const/4 v12, 0x2

    .line 335
    if-ne v4, v12, :cond_11

    .line 336
    .line 337
    const/4 v15, 0x1

    .line 338
    :cond_11
    if-eqz v15, :cond_14

    .line 339
    .line 340
    iget-object v4, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    add-int/2addr v4, v2

    .line 347
    invoke-static {v4, v5, v1}, Lgd/g;->c(I[B[B)Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_14

    .line 352
    .line 353
    iget-object v4, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 354
    .line 355
    if-eqz v4, :cond_13

    .line 356
    .line 357
    iget-object v4, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    add-int/2addr v4, v2

    .line 364
    invoke-static {v4, v5, v9}, Lgd/g;->c(I[B[B)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_14

    .line 369
    .line 370
    :cond_12
    :goto_4
    const/4 v4, 0x1

    .line 371
    goto :goto_6

    .line 372
    :cond_13
    iget-byte v4, v10, Lnd/d;->a:B

    .line 373
    .line 374
    const/16 v12, 0x16

    .line 375
    .line 376
    const/16 v13, 0x21

    .line 377
    .line 378
    if-eq v4, v12, :cond_12

    .line 379
    .line 380
    if-ne v4, v13, :cond_14

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_14
    :goto_5
    const/4 v4, 0x0

    .line 384
    :goto_6
    if-nez v4, :cond_18

    .line 385
    .line 386
    iget-object v12, v0, Lgd/g;->p:Ljava/lang/Long;

    .line 387
    .line 388
    if-nez v12, :cond_16

    .line 389
    .line 390
    iget-object v12, v0, Lgd/g;->q:[B

    .line 391
    .line 392
    array-length v12, v12

    .line 393
    if-eqz v12, :cond_15

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_15
    sget-boolean v1, Lid/b;->b:Z

    .line 397
    .line 398
    if-eqz v1, :cond_19

    .line 399
    .line 400
    const/4 v1, 0x2

    .line 401
    new-array v1, v1, [Ljava/lang/Object;

    .line 402
    .line 403
    invoke-static {v9}, Lgd/g;->b([B)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    const/4 v12, 0x0

    .line 408
    aput-object v9, v1, v12

    .line 409
    .line 410
    invoke-static {v5}, Lgd/g;->d([B)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    const/4 v12, 0x1

    .line 415
    aput-object v9, v1, v12

    .line 416
    .line 417
    const-string v9, "This is not a matching Beacon advertisement. (Was expecting %s.  The bytes I see are: %s"

    .line 418
    .line 419
    invoke-static {v14, v9, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_16
    :goto_7
    sget-boolean v12, Lid/b;->b:Z

    .line 424
    .line 425
    if-eqz v12, :cond_19

    .line 426
    .line 427
    iget-object v12, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 428
    .line 429
    if-eqz v12, :cond_17

    .line 430
    .line 431
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    goto :goto_8

    .line 436
    :cond_17
    const/4 v12, 0x0

    .line 437
    :goto_8
    const/4 v13, 0x5

    .line 438
    new-array v13, v13, [Ljava/lang/Object;

    .line 439
    .line 440
    invoke-static {v1}, Lgd/g;->b([B)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const/4 v15, 0x0

    .line 445
    aput-object v1, v13, v15

    .line 446
    .line 447
    iget-object v1, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    add-int/2addr v1, v2

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    const/4 v15, 0x1

    .line 459
    aput-object v1, v13, v15

    .line 460
    .line 461
    invoke-static {v9}, Lgd/g;->b([B)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const/4 v9, 0x2

    .line 466
    aput-object v1, v13, v9

    .line 467
    .line 468
    add-int/2addr v12, v2

    .line 469
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    const/4 v9, 0x3

    .line 474
    aput-object v1, v13, v9

    .line 475
    .line 476
    invoke-static {v5}, Lgd/g;->d([B)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    const/4 v9, 0x4

    .line 481
    aput-object v1, v13, v9

    .line 482
    .line 483
    const-string v1, "This is not a matching Beacon advertisement. Was expecting %s at offset %d and %s at offset %d.  The bytes I see are: %s"

    .line 484
    .line 485
    invoke-static {v14, v1, v13}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_18
    sget-boolean v1, Lid/b;->b:Z

    .line 490
    .line 491
    if-eqz v1, :cond_19

    .line 492
    .line 493
    const/4 v1, 0x1

    .line 494
    new-array v12, v1, [Ljava/lang/Object;

    .line 495
    .line 496
    invoke-static {v9}, Lgd/g;->b([B)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    const/4 v13, 0x0

    .line 501
    aput-object v9, v12, v13

    .line 502
    .line 503
    const-string v9, "This is a recognized beacon advertisement -- %s seen"

    .line 504
    .line 505
    invoke-static {v14, v9, v12}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    new-array v1, v1, [Ljava/lang/Object;

    .line 509
    .line 510
    invoke-static {v5}, Lgd/g;->d([B)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    aput-object v9, v1, v13

    .line 515
    .line 516
    const-string v9, "Bytes are: %s"

    .line 517
    .line 518
    invoke-static {v14, v9, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    :cond_19
    :goto_9
    if-eqz v4, :cond_2c

    .line 522
    .line 523
    array-length v1, v5

    .line 524
    iget-object v4, v0, Lgd/g;->w:Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    add-int/2addr v4, v2

    .line 531
    iget-object v9, v0, Lgd/g;->x:Ljava/lang/Boolean;

    .line 532
    .line 533
    if-gt v1, v4, :cond_1c

    .line 534
    .line 535
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-eqz v1, :cond_1c

    .line 540
    .line 541
    sget-boolean v1, Lid/b;->b:Z

    .line 542
    .line 543
    if-eqz v1, :cond_1a

    .line 544
    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v4, "Expanding buffer because it is too short to parse: "

    .line 548
    .line 549
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    array-length v4, v5

    .line 553
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v4, ", needed: "

    .line 557
    .line 558
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    iget-object v4, v0, Lgd/g;->w:Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    add-int/2addr v4, v2

    .line 568
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    const/4 v4, 0x0

    .line 576
    new-array v4, v4, [Ljava/lang/Object;

    .line 577
    .line 578
    invoke-static {v14, v1, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    :cond_1a
    iget-object v1, v0, Lgd/g;->w:Ljava/lang/Integer;

    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    add-int/2addr v1, v2

    .line 588
    array-length v4, v5

    .line 589
    if-lt v4, v1, :cond_1b

    .line 590
    .line 591
    goto :goto_a

    .line 592
    :cond_1b
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    goto :goto_b

    .line 597
    :cond_1c
    :goto_a
    move-object v1, v5

    .line 598
    :goto_b
    const/4 v4, 0x0

    .line 599
    :goto_c
    iget-object v5, v0, Lgd/g;->d:Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    const-string v13, " because PDU is too short.  endIndex: "

    .line 606
    .line 607
    const-string v15, " PDU endIndex: "

    .line 608
    .line 609
    if-ge v4, v12, :cond_22

    .line 610
    .line 611
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    check-cast v5, Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    add-int/2addr v5, v2

    .line 622
    iget v12, v10, Lnd/d;->d:I

    .line 623
    .line 624
    move-object/from16 v16, v6

    .line 625
    .line 626
    iget-object v6, v0, Lgd/g;->e:Ljava/util/ArrayList;

    .line 627
    .line 628
    move/from16 v17, v11

    .line 629
    .line 630
    iget-object v11, v0, Lgd/g;->c:Ljava/util/ArrayList;

    .line 631
    .line 632
    if-le v5, v12, :cond_1e

    .line 633
    .line 634
    iget-object v12, v0, Lgd/g;->j:Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v12

    .line 640
    check-cast v12, Ljava/lang/Boolean;

    .line 641
    .line 642
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 643
    .line 644
    .line 645
    move-result v12

    .line 646
    if-eqz v12, :cond_1e

    .line 647
    .line 648
    sget-boolean v12, Lid/b;->b:Z

    .line 649
    .line 650
    if-eqz v12, :cond_1d

    .line 651
    .line 652
    new-instance v12, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v13, "Need to truncate identifier by "

    .line 655
    .line 656
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    iget v13, v10, Lnd/d;->d:I

    .line 660
    .line 661
    sub-int/2addr v5, v13

    .line 662
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    const/4 v12, 0x0

    .line 670
    new-array v12, v12, [Ljava/lang/Object;

    .line 671
    .line 672
    invoke-static {v14, v5, v12}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    :cond_1d
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    check-cast v5, Ljava/lang/Integer;

    .line 680
    .line 681
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    add-int/2addr v5, v2

    .line 686
    iget v11, v10, Lnd/d;->d:I

    .line 687
    .line 688
    add-int/lit8 v11, v11, 0x1

    .line 689
    .line 690
    if-gt v11, v5, :cond_21

    .line 691
    .line 692
    const-string v1, "PDU is too short for identifer.  Packet is malformed"

    .line 693
    .line 694
    const/4 v2, 0x0

    .line 695
    new-array v2, v2, [Ljava/lang/Object;

    .line 696
    .line 697
    invoke-static {v14, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    const/4 v1, 0x0

    .line 701
    return-object v1

    .line 702
    :cond_1e
    iget v12, v10, Lnd/d;->d:I

    .line 703
    .line 704
    if-le v5, v12, :cond_20

    .line 705
    .line 706
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 707
    .line 708
    .line 709
    move-result v12

    .line 710
    if-nez v12, :cond_20

    .line 711
    .line 712
    sget-boolean v6, Lid/b;->b:Z

    .line 713
    .line 714
    if-eqz v6, :cond_1f

    .line 715
    .line 716
    const-string v6, "Cannot parse identifier "

    .line 717
    .line 718
    invoke-static {v6, v4, v13, v5, v15}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    iget v6, v10, Lnd/d;->d:I

    .line 723
    .line 724
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    const/4 v6, 0x0

    .line 732
    new-array v6, v6, [Ljava/lang/Object;

    .line 733
    .line 734
    invoke-static {v14, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :cond_1f
    const/4 v5, 0x1

    .line 738
    const/4 v11, 0x1

    .line 739
    goto :goto_d

    .line 740
    :cond_20
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v11

    .line 744
    check-cast v11, Ljava/lang/Integer;

    .line 745
    .line 746
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 747
    .line 748
    .line 749
    move-result v11

    .line 750
    add-int/2addr v11, v2

    .line 751
    add-int/lit8 v5, v5, 0x1

    .line 752
    .line 753
    move/from16 v18, v11

    .line 754
    .line 755
    move v11, v5

    .line 756
    move/from16 v5, v18

    .line 757
    .line 758
    :cond_21
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    check-cast v6, Ljava/lang/Boolean;

    .line 763
    .line 764
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    invoke-static {v1, v5, v11, v6}, Lgd/h;->n([BIIZ)Lgd/h;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move/from16 v11, v17

    .line 776
    .line 777
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 778
    .line 779
    move-object/from16 v6, v16

    .line 780
    .line 781
    goto/16 :goto_c

    .line 782
    .line 783
    :cond_22
    move-object/from16 v16, v6

    .line 784
    .line 785
    move/from16 v17, v11

    .line 786
    .line 787
    const/4 v4, 0x0

    .line 788
    :goto_e
    iget-object v5, v0, Lgd/g;->g:Ljava/util/ArrayList;

    .line 789
    .line 790
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 791
    .line 792
    .line 793
    move-result v6

    .line 794
    if-ge v4, v6, :cond_25

    .line 795
    .line 796
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    check-cast v5, Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    add-int/2addr v5, v2

    .line 807
    iget v6, v10, Lnd/d;->d:I

    .line 808
    .line 809
    if-le v5, v6, :cond_24

    .line 810
    .line 811
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 812
    .line 813
    .line 814
    move-result v6

    .line 815
    if-nez v6, :cond_24

    .line 816
    .line 817
    sget-boolean v6, Lid/b;->b:Z

    .line 818
    .line 819
    if-eqz v6, :cond_23

    .line 820
    .line 821
    const-string v6, "Cannot parse data field "

    .line 822
    .line 823
    invoke-static {v6, v4, v13, v5, v15}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    iget v6, v10, Lnd/d;->d:I

    .line 828
    .line 829
    const-string v11, ".  Setting value to 0"

    .line 830
    .line 831
    invoke-static {v5, v6, v11}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    const/4 v6, 0x0

    .line 836
    new-array v6, v6, [Ljava/lang/Object;

    .line 837
    .line 838
    invoke-static {v14, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    :cond_23
    new-instance v5, Ljava/lang/Long;

    .line 842
    .line 843
    const-wide/16 v11, 0x0

    .line 844
    .line 845
    invoke-direct {v5, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 846
    .line 847
    .line 848
    goto :goto_f

    .line 849
    :cond_24
    iget-object v6, v0, Lgd/g;->f:Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    check-cast v6, Ljava/lang/Integer;

    .line 856
    .line 857
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 858
    .line 859
    .line 860
    move-result v6

    .line 861
    add-int/2addr v6, v2

    .line 862
    iget-object v11, v0, Lgd/g;->h:Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v11

    .line 868
    check-cast v11, Ljava/lang/Boolean;

    .line 869
    .line 870
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 871
    .line 872
    .line 873
    move-result v11

    .line 874
    invoke-static {v1, v6, v5, v11}, Lgd/g;->a([BIIZ)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 879
    .line 880
    .line 881
    move-result-object v5

    .line 882
    :goto_f
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    add-int/lit8 v4, v4, 0x1

    .line 886
    .line 887
    goto :goto_e

    .line 888
    :cond_25
    iget-object v4, v0, Lgd/g;->s:Ljava/lang/Integer;

    .line 889
    .line 890
    if-eqz v4, :cond_28

    .line 891
    .line 892
    iget-object v4, v0, Lgd/g;->t:Ljava/lang/Integer;

    .line 893
    .line 894
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    add-int/2addr v4, v2

    .line 899
    :try_start_0
    iget v5, v10, Lnd/d;->d:I

    .line 900
    .line 901
    if-le v4, v5, :cond_27

    .line 902
    .line 903
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 904
    .line 905
    .line 906
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    if-nez v5, :cond_27

    .line 908
    .line 909
    :try_start_1
    sget-boolean v5, Lid/b;->b:Z

    .line 910
    .line 911
    if-eqz v5, :cond_26

    .line 912
    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .line 917
    .line 918
    const-string v6, "Cannot parse power field because PDU is too short.  endIndex: "

    .line 919
    .line 920
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    iget v4, v10, Lnd/d;->d:I

    .line 930
    .line 931
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    const/4 v5, 0x0

    .line 939
    new-array v5, v5, [Ljava/lang/Object;

    .line 940
    .line 941
    invoke-static {v14, v4, v5}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 942
    .line 943
    .line 944
    :catch_0
    :cond_26
    const/4 v4, 0x1

    .line 945
    move/from16 v4, p1

    .line 946
    .line 947
    const/4 v11, 0x1

    .line 948
    goto :goto_12

    .line 949
    :cond_27
    :try_start_2
    iget-object v4, v0, Lgd/g;->s:Ljava/lang/Integer;

    .line 950
    .line 951
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 952
    .line 953
    .line 954
    move-result v4

    .line 955
    add-int/2addr v4, v2

    .line 956
    iget-object v5, v0, Lgd/g;->t:Ljava/lang/Integer;

    .line 957
    .line 958
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 959
    .line 960
    .line 961
    move-result v5

    .line 962
    add-int/2addr v5, v2

    .line 963
    const/4 v6, 0x0

    .line 964
    invoke-static {v1, v4, v5, v6}, Lgd/g;->a([BIIZ)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    move-result v4

    .line 972
    iget-object v5, v0, Lgd/g;->v:Ljava/lang/Integer;

    .line 973
    .line 974
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 975
    .line 976
    .line 977
    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 978
    add-int/2addr v4, v5

    .line 979
    const/16 v5, 0x7f

    .line 980
    .line 981
    if-le v4, v5, :cond_2a

    .line 982
    .line 983
    add-int/lit16 v4, v4, -0x100

    .line 984
    .line 985
    goto :goto_11

    .line 986
    :catch_1
    nop

    .line 987
    goto :goto_10

    .line 988
    :cond_28
    iget-object v4, v0, Lgd/g;->v:Ljava/lang/Integer;

    .line 989
    .line 990
    if-eqz v4, :cond_29

    .line 991
    .line 992
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 993
    .line 994
    .line 995
    move-result v4

    .line 996
    goto :goto_11

    .line 997
    :cond_29
    :goto_10
    move/from16 v4, p1

    .line 998
    .line 999
    :cond_2a
    :goto_11
    move/from16 v11, v17

    .line 1000
    .line 1001
    :goto_12
    if-nez v11, :cond_2b

    .line 1002
    .line 1003
    const/4 v6, 0x1

    .line 1004
    move-object v5, v1

    .line 1005
    move v9, v2

    .line 1006
    goto :goto_14

    .line 1007
    :cond_2b
    move-object v5, v1

    .line 1008
    goto :goto_13

    .line 1009
    :cond_2c
    move-object/from16 v16, v6

    .line 1010
    .line 1011
    move/from16 v4, p1

    .line 1012
    .line 1013
    :goto_13
    const/4 v9, 0x0

    .line 1014
    const/16 v12, 0x21

    .line 1015
    .line 1016
    move v10, v2

    .line 1017
    move-object/from16 v6, v16

    .line 1018
    .line 1019
    move-wide/from16 v1, p4

    .line 1020
    .line 1021
    goto/16 :goto_1

    .line 1022
    .line 1023
    :cond_2d
    move/from16 p1, v4

    .line 1024
    .line 1025
    const/4 v6, 0x0

    .line 1026
    move v9, v10

    .line 1027
    :goto_14
    if-eqz v6, :cond_33

    .line 1028
    .line 1029
    iget-object v1, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 1030
    .line 1031
    if-eqz v1, :cond_2e

    .line 1032
    .line 1033
    iget-object v1, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 1034
    .line 1035
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1036
    .line 1037
    .line 1038
    move-result v1

    .line 1039
    add-int/2addr v1, v9

    .line 1040
    iget-object v2, v0, Lgd/g;->l:Ljava/lang/Integer;

    .line 1041
    .line 1042
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1043
    .line 1044
    .line 1045
    move-result v2

    .line 1046
    add-int/2addr v2, v9

    .line 1047
    const/4 v6, 0x0

    .line 1048
    invoke-static {v5, v1, v2, v6}, Lgd/g;->a([BIIZ)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v1

    .line 1056
    goto :goto_15

    .line 1057
    :cond_2e
    const/4 v1, -0x1

    .line 1058
    :goto_15
    add-int/lit8 v2, v9, 0x1

    .line 1059
    .line 1060
    const/4 v6, 0x1

    .line 1061
    invoke-static {v5, v9, v2, v6}, Lgd/g;->a([BIIZ)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-eqz p3, :cond_2f

    .line 1070
    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v6

    .line 1075
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1079
    goto :goto_16

    .line 1080
    :catch_2
    const-string v9, "Cannot read device name without Manifest.permission.BLUETOOTH_CONNECT"

    .line 1081
    .line 1082
    const/4 v10, 0x0

    .line 1083
    new-array v10, v10, [Ljava/lang/Object;

    .line 1084
    .line 1085
    invoke-static {v14, v9, v10}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    const/4 v9, 0x0

    .line 1089
    goto :goto_16

    .line 1090
    :cond_2f
    const/4 v9, 0x0

    .line 1091
    const/4 v6, 0x0

    .line 1092
    :goto_16
    iput-object v7, v3, Lgd/c;->a:Ljava/util/ArrayList;

    .line 1093
    .line 1094
    iput-object v8, v3, Lgd/c;->b:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    move/from16 v7, p2

    .line 1097
    .line 1098
    iput v7, v3, Lgd/c;->e:I

    .line 1099
    .line 1100
    iput v1, v3, Lgd/c;->l:I

    .line 1101
    .line 1102
    iget-object v1, v0, Lgd/g;->p:Ljava/lang/Long;

    .line 1103
    .line 1104
    if-eqz v1, :cond_30

    .line 1105
    .line 1106
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v7

    .line 1110
    long-to-int v1, v7

    .line 1111
    goto :goto_17

    .line 1112
    :cond_30
    const/4 v1, -0x1

    .line 1113
    :goto_17
    iput v1, v3, Lgd/c;->n:I

    .line 1114
    .line 1115
    iput-object v6, v3, Lgd/c;->g:Ljava/lang/String;

    .line 1116
    .line 1117
    iput-object v9, v3, Lgd/c;->q:Ljava/lang/String;

    .line 1118
    .line 1119
    iput v2, v3, Lgd/c;->m:I

    .line 1120
    .line 1121
    iget-object v1, v0, Lgd/g;->y:Ljava/lang/String;

    .line 1122
    .line 1123
    iput-object v1, v3, Lgd/c;->r:Ljava/lang/String;

    .line 1124
    .line 1125
    iget-object v1, v0, Lgd/g;->A:Ljava/util/ArrayList;

    .line 1126
    .line 1127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    if-gtz v1, :cond_32

    .line 1132
    .line 1133
    iget-object v1, v0, Lgd/g;->r:Ljava/lang/Boolean;

    .line 1134
    .line 1135
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    if-eqz v1, :cond_31

    .line 1140
    .line 1141
    goto :goto_18

    .line 1142
    :cond_31
    const/4 v1, 0x0

    .line 1143
    goto :goto_19

    .line 1144
    :cond_32
    :goto_18
    const/4 v1, 0x1

    .line 1145
    :goto_19
    iput-boolean v1, v3, Lgd/c;->s:Z

    .line 1146
    .line 1147
    move-wide/from16 v1, p4

    .line 1148
    .line 1149
    iput-wide v1, v3, Lgd/c;->t:J

    .line 1150
    .line 1151
    iput-wide v1, v3, Lgd/c;->v:J

    .line 1152
    .line 1153
    iput-object v5, v3, Lgd/c;->w:[B

    .line 1154
    .line 1155
    iput v4, v3, Lgd/c;->f:I

    .line 1156
    .line 1157
    return-object v3

    .line 1158
    :cond_33
    const/4 v1, 0x0

    .line 1159
    return-object v1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "API setBeaconLayout "

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v4, "BeaconParser"

    .line 15
    .line 16
    invoke-static {v4, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lgd/g;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "Parsing beacon layout: "

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-string v2, ","

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    iput-object v2, v0, Lgd/g;->r:Ljava/lang/Boolean;

    .line 39
    .line 40
    array-length v2, v1

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    iget-object v5, v0, Lgd/g;->g:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v6, v0, Lgd/g;->d:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    if-ge v3, v2, :cond_d

    .line 48
    .line 49
    aget-object v8, v1, v3

    .line 50
    .line 51
    sget-object v9, Lgd/g;->B:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/4 v10, 0x0

    .line 58
    :goto_1
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const/4 v12, 0x2

    .line 63
    const/4 v13, 0x3

    .line 64
    const-string v14, "l"

    .line 65
    .line 66
    const-string v15, "Cannot parse integer byte offset in term: "

    .line 67
    .line 68
    if-eqz v11, :cond_0

    .line 69
    .line 70
    :try_start_0
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    iget-object v14, v0, Lgd/g;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    const-string v13, "v"

    .line 108
    .line 109
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    iget-object v13, v0, Lgd/g;->j:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v12, v0, Lgd/g;->c:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    const/4 v10, 0x1

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    new-instance v1, Lgd/g$a;

    .line 141
    .line 142
    invoke-static {v15, v8}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v1

    .line 150
    :cond_0
    sget-object v6, Lgd/g;->E:Ljava/util/regex/Pattern;

    .line 151
    .line 152
    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_1

    .line 161
    .line 162
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    iget-object v13, v0, Lgd/g;->h:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    iget-object v11, v0, Lgd/g;->f:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .line 210
    .line 211
    const/4 v10, 0x1

    .line 212
    const/4 v13, 0x3

    .line 213
    goto :goto_2

    .line 214
    :catch_1
    new-instance v1, Lgd/g$a;

    .line 215
    .line 216
    invoke-static {v15, v8}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v1

    .line 224
    :cond_1
    sget-object v5, Lgd/g;->F:Ljava/util/regex/Pattern;

    .line 225
    .line 226
    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_4

    .line 235
    .line 236
    const-string v6, "none"

    .line 237
    .line 238
    :try_start_2
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    if-eqz v9, :cond_2

    .line 243
    .line 244
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    if-eqz v9, :cond_2

    .line 249
    .line 250
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    iput-object v9, v0, Lgd/g;->s:Ljava/lang/Integer;

    .line 271
    .line 272
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    iput-object v9, v0, Lgd/g;->t:Ljava/lang/Integer;

    .line 277
    .line 278
    :cond_2
    const/4 v9, 0x3

    .line 279
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    if-eqz v10, :cond_3

    .line 284
    .line 285
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    const/4 v9, 0x0

    .line 295
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    iput-object v9, v0, Lgd/g;->v:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    .line 301
    const/4 v10, 0x1

    .line 302
    goto :goto_3

    .line 303
    :catch_2
    new-instance v1, Lgd/g$a;

    .line 304
    .line 305
    const-string v2, "Cannot parse integer power byte offset ("

    .line 306
    .line 307
    const-string v3, ") in term: "

    .line 308
    .line 309
    invoke-static {v2, v6, v3, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v1

    .line 317
    :cond_4
    sget-object v5, Lgd/g;->C:Ljava/util/regex/Pattern;

    .line 318
    .line 319
    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    const-string v9, "0x"

    .line 328
    .line 329
    const-string v11, " in term: "

    .line 330
    .line 331
    if-eqz v6, :cond_5

    .line 332
    .line 333
    :try_start_3
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    iput-object v6, v0, Lgd/g;->k:Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    iput-object v6, v0, Lgd/g;->l:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 360
    .line 361
    const/4 v6, 0x3

    .line 362
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    iput-object v9, v0, Lgd/g;->b:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 386
    .line 387
    const/4 v10, 0x1

    .line 388
    goto :goto_5

    .line 389
    :catch_3
    new-instance v1, Lgd/g$a;

    .line 390
    .line 391
    const-string v2, "Cannot parse beacon type code: "

    .line 392
    .line 393
    invoke-static {v2, v6, v11, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v1

    .line 401
    :catch_4
    new-instance v1, Lgd/g$a;

    .line 402
    .line 403
    invoke-static {v15, v8}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v1

    .line 411
    :cond_5
    sget-object v5, Lgd/g;->D:Ljava/util/regex/Pattern;

    .line 412
    .line 413
    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-eqz v6, :cond_a

    .line 422
    .line 423
    :try_start_5
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    iput-object v6, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 444
    .line 445
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    iput-object v6, v0, Lgd/g;->n:Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 450
    .line 451
    const/4 v6, 0x3

    .line 452
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    iget-object v10, v0, Lgd/g;->n:Ljava/lang/Integer;

    .line 457
    .line 458
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v10

    .line 462
    iget-object v13, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 463
    .line 464
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v13

    .line 468
    sub-int/2addr v10, v13

    .line 469
    add-int/2addr v10, v7

    .line 470
    if-ne v10, v12, :cond_6

    .line 471
    .line 472
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-static {v7}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    iput-object v7, v0, Lgd/g;->p:Ljava/lang/Long;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :catch_5
    new-instance v1, Lgd/g$a;

    .line 495
    .line 496
    const-string v2, "Cannot parse serviceUuid: "

    .line 497
    .line 498
    invoke-static {v2, v6, v11, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v1

    .line 506
    :cond_6
    iget-object v10, v0, Lgd/g;->n:Ljava/lang/Integer;

    .line 507
    .line 508
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    iget-object v12, v0, Lgd/g;->m:Ljava/lang/Integer;

    .line 513
    .line 514
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 515
    .line 516
    .line 517
    move-result v12

    .line 518
    sub-int/2addr v10, v12

    .line 519
    add-int/2addr v10, v7

    .line 520
    const/16 v7, 0x10

    .line 521
    .line 522
    if-ne v10, v7, :cond_9

    .line 523
    .line 524
    const-string v10, "-"

    .line 525
    .line 526
    const-string v12, ""

    .line 527
    .line 528
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v10

    .line 532
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 533
    .line 534
    .line 535
    move-result v12

    .line 536
    const/16 v13, 0x20

    .line 537
    .line 538
    if-ne v12, v13, :cond_8

    .line 539
    .line 540
    new-array v6, v7, [B

    .line 541
    .line 542
    iput-object v6, v0, Lgd/g;->q:[B

    .line 543
    .line 544
    const/4 v6, 0x0

    .line 545
    :goto_7
    if-ge v6, v7, :cond_7

    .line 546
    .line 547
    mul-int/lit8 v12, v6, 0x2

    .line 548
    .line 549
    add-int/lit8 v13, v12, 0x2

    .line 550
    .line 551
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    :try_start_7
    iget-object v13, v0, Lgd/g;->q:[B

    .line 556
    .line 557
    rsub-int/lit8 v14, v6, 0xf

    .line 558
    .line 559
    move-object/from16 p1, v1

    .line 560
    .line 561
    invoke-static {v12, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    int-to-byte v1, v1

    .line 566
    aput-byte v1, v13, v14
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 567
    .line 568
    add-int/lit8 v6, v6, 0x1

    .line 569
    .line 570
    move-object/from16 v1, p1

    .line 571
    .line 572
    goto :goto_7

    .line 573
    :catch_6
    new-instance v1, Lgd/g$a;

    .line 574
    .line 575
    const-string v2, "Cannot parse serviceUuid byte "

    .line 576
    .line 577
    invoke-static {v2, v12, v11, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw v1

    .line 585
    :cond_7
    :goto_8
    move-object/from16 p1, v1

    .line 586
    .line 587
    const/4 v7, 0x1

    .line 588
    const/4 v10, 0x1

    .line 589
    const/4 v12, 0x2

    .line 590
    move-object/from16 v1, p1

    .line 591
    .line 592
    goto/16 :goto_6

    .line 593
    .line 594
    :cond_8
    new-instance v1, Lgd/g$a;

    .line 595
    .line 596
    const-string v2, "128-bit ServiceUuid must be 16 bytes long: "

    .line 597
    .line 598
    invoke-static {v2, v6, v11, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw v1

    .line 606
    :cond_9
    new-instance v1, Lgd/g$a;

    .line 607
    .line 608
    const-string v2, "Cannot parse serviceUuid -- it must be 2 bytes or 16 bytes long: "

    .line 609
    .line 610
    invoke-static {v2, v6, v11, v8}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    throw v1

    .line 618
    :catch_7
    new-instance v1, Lgd/g$a;

    .line 619
    .line 620
    invoke-static {v15, v8}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v1

    .line 628
    :cond_a
    move-object/from16 p1, v1

    .line 629
    .line 630
    sget-object v1, Lgd/g;->G:Ljava/util/regex/Pattern;

    .line 631
    .line 632
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    :goto_9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_b

    .line 641
    .line 642
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 643
    .line 644
    iput-object v5, v0, Lgd/g;->r:Ljava/lang/Boolean;

    .line 645
    .line 646
    const/4 v10, 0x1

    .line 647
    goto :goto_9

    .line 648
    :cond_b
    if-eqz v10, :cond_c

    .line 649
    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 651
    .line 652
    move-object/from16 v1, p1

    .line 653
    .line 654
    goto/16 :goto_0

    .line 655
    .line 656
    :cond_c
    const/4 v1, 0x1

    .line 657
    new-array v1, v1, [Ljava/lang/Object;

    .line 658
    .line 659
    const/4 v2, 0x0

    .line 660
    aput-object v8, v1, v2

    .line 661
    .line 662
    const-string v2, "cannot parse term %s"

    .line 663
    .line 664
    invoke-static {v4, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    new-instance v1, Lgd/g$a;

    .line 668
    .line 669
    const-string v2, "Cannot parse beacon layout term: "

    .line 670
    .line 671
    invoke-static {v2, v8}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-direct {v1, v2}, Lgd/g$a;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v1

    .line 679
    :cond_d
    if-eqz v6, :cond_f

    .line 680
    .line 681
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    const/4 v2, 0x0

    .line 686
    :cond_e
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-eqz v3, :cond_10

    .line 691
    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    check-cast v3, Ljava/lang/Integer;

    .line 697
    .line 698
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    if-le v3, v2, :cond_e

    .line 703
    .line 704
    move v2, v3

    .line 705
    goto :goto_a

    .line 706
    :cond_f
    const/4 v2, 0x0

    .line 707
    :cond_10
    if-eqz v5, :cond_12

    .line 708
    .line 709
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    :cond_11
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-eqz v3, :cond_12

    .line 718
    .line 719
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    check-cast v3, Ljava/lang/Integer;

    .line 724
    .line 725
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    if-le v3, v2, :cond_11

    .line 730
    .line 731
    move v2, v3

    .line 732
    goto :goto_b

    .line 733
    :cond_12
    iget-object v1, v0, Lgd/g;->t:Ljava/lang/Integer;

    .line 734
    .line 735
    if-eqz v1, :cond_13

    .line 736
    .line 737
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    if-le v1, v2, :cond_13

    .line 742
    .line 743
    iget-object v1, v0, Lgd/g;->t:Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    :cond_13
    iget-object v1, v0, Lgd/g;->n:Ljava/lang/Integer;

    .line 750
    .line 751
    if-eqz v1, :cond_14

    .line 752
    .line 753
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-le v1, v2, :cond_14

    .line 758
    .line 759
    iget-object v1, v0, Lgd/g;->n:Ljava/lang/Integer;

    .line 760
    .line 761
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 766
    .line 767
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    iput-object v1, v0, Lgd/g;->w:Ljava/lang/Integer;

    .line 772
    .line 773
    return-void
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lgd/g;->b:Ljava/lang/Long;

    aput-object v2, v0, v1

    iget-object v1, p0, Lgd/g;->c:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->d:Ljava/util/ArrayList;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->e:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->f:Ljava/util/ArrayList;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->g:Ljava/util/ArrayList;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->h:Ljava/util/ArrayList;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lgd/g;->j:Ljava/util/ArrayList;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    iget-object v2, p0, Lgd/g;->k:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lgd/g;->l:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lgd/g;->m:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lgd/g;->n:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lgd/g;->p:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lgd/g;->q:[B

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lgd/g;->r:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lgd/g;->s:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lgd/g;->t:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lgd/g;->v:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lgd/g;->w:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lgd/g;->x:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lgd/g;->y:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lgd/g;->z:[I

    aput-object v2, v0, v1

    iget-object v1, p0, Lgd/g;->A:Ljava/util/ArrayList;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
