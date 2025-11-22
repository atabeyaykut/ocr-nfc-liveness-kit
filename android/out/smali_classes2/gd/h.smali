.class public final Lgd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lgd/h;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:[C


# instance fields
.field public final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^0x[0-9A-Fa-f]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9A-Fa-f]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "^0|[1-9][0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/h;->d:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgd/h;->e:Ljava/util/regex/Pattern;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgd/h;->f:[C

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

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgd/h;->a:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Identifiers cannot be constructed from null pointers but \"value\" is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n([BIIZ)Lgd/h;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-ltz p1, :cond_3

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    if-gt p2, v0, :cond_2

    .line 10
    .line 11
    if-gt p1, p2, :cond_1

    .line 12
    .line 13
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    array-length p2, p0

    .line 21
    div-int/lit8 p2, p2, 0x2

    .line 22
    .line 23
    if-ge p1, p2, :cond_0

    .line 24
    .line 25
    array-length p2, p0

    .line 26
    sub-int/2addr p2, p1

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    aget-byte p3, p0, p1

    .line 30
    .line 31
    aget-byte v0, p0, p2

    .line 32
    .line 33
    aput-byte v0, p0, p1

    .line 34
    .line 35
    aput-byte p3, p0, p2

    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lgd/h;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lgd/h;-><init>([B)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p1, "start > end"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 55
    .line 56
    const-string p1, "end > bytes.length"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 63
    .line 64
    const-string p1, "start < 0 || start > bytes.length"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string p1, "Identifiers cannot be constructed from null pointers but \"bytes\" is null."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static o(Ljava/lang/String;)Lgd/h;
    .locals 3

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    sget-object v0, Lgd/h;->b:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lgd/h;->e:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "-"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lgd/h;->d:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-ltz p0, :cond_2

    .line 63
    .line 64
    const v0, 0xffff

    .line 65
    .line 66
    .line 67
    if-gt p0, v0, :cond_2

    .line 68
    .line 69
    new-array v0, v1, [B

    .line 70
    .line 71
    shr-int/lit8 v1, p0, 0x8

    .line 72
    .line 73
    int-to-byte v1, v1

    .line 74
    const/4 v2, 0x0

    .line 75
    aput-byte v1, v0, v2

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    int-to-byte p0, p0

    .line 79
    aput-byte p0, v0, v1

    .line 80
    .line 81
    new-instance p0, Lgd/h;

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lgd/h;-><init>([B)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v0, "Identifiers can only be constructed from integers between 0 and 65535 (inclusive)."

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string v1, "Unable to parse Identifier in decimal format."

    .line 99
    .line 100
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    sget-object v0, Lgd/h;->c:Ljava/util/regex/Pattern;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    :goto_0
    invoke-static {p0}, Lgd/h;->q(Ljava/lang/String;)Lgd/h;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_1
    return-object p0

    .line 121
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string v0, "Unable to parse Identifier."

    .line 124
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 130
    .line 131
    const-string v0, "Identifiers cannot be constructed from null pointers but \"stringValue\" is null."

    .line 132
    .line 133
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public static q(Ljava/lang/String;)Lgd/h;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "0"

    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    div-int/lit8 v0, v0, 0x2

    .line 34
    .line 35
    new-array v1, v0, [B

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-ge v2, v0, :cond_1

    .line 39
    .line 40
    mul-int/lit8 v3, v2, 0x2

    .line 41
    .line 42
    add-int/lit8 v4, v3, 0x2

    .line 43
    .line 44
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/16 v4, 0x10

    .line 49
    .line 50
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 55
    .line 56
    int-to-byte v3, v3

    .line 57
    aput-byte v3, v1, v2

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, Lgd/h;

    .line 63
    .line 64
    invoke-direct {p0, v1}, Lgd/h;-><init>([B)V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lgd/h;

    .line 2
    .line 3
    iget-object v0, p0, Lgd/h;->a:[B

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    iget-object v2, p1, Lgd/h;->a:[B

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, -0x1

    .line 11
    if-eq v1, v3, :cond_0

    .line 12
    .line 13
    array-length p1, v0

    .line 14
    array-length v0, v2

    .line 15
    if-ge p1, v0, :cond_3

    .line 16
    .line 17
    :goto_0
    const/4 v4, -0x1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_1
    array-length v3, v0

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-byte v3, v0, v2

    .line 25
    .line 26
    iget-object v6, p1, Lgd/h;->a:[B

    .line 27
    .line 28
    aget-byte v6, v6, v2

    .line 29
    .line 30
    if-eq v3, v6, :cond_1

    .line 31
    .line 32
    if-ge v3, v6, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v4, 0x0

    .line 39
    :cond_3
    :goto_2
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lgd/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lgd/h;

    iget-object v0, p0, Lgd/h;->a:[B

    iget-object p1, p1, Lgd/h;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lgd/h;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lgd/h;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-ne v1, v3, :cond_2

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    if-gt v1, v3, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    aget-byte v3, v0, v2

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 18
    .line 19
    array-length v4, v0

    .line 20
    sub-int/2addr v4, v2

    .line 21
    add-int/lit8 v4, v4, -0x1

    .line 22
    .line 23
    mul-int/lit8 v4, v4, 0x8

    .line 24
    .line 25
    shl-int/2addr v3, v4

    .line 26
    or-int/2addr v1, v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    const-string v1, "Only supported for Identifiers with max byte length of 2"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2
    array-length v1, v0

    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    if-ne v1, v4, :cond_4

    .line 47
    .line 48
    array-length v1, v0

    .line 49
    if-ne v1, v4, :cond_3

    .line 50
    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/UUID;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 78
    .line 79
    const-string v1, "Only Identifiers backed by a byte array with length of exactly 16 can be UUIDs."

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_4
    array-length v1, v0

    .line 86
    mul-int/lit8 v4, v1, 0x2

    .line 87
    .line 88
    add-int/2addr v4, v3

    .line 89
    new-array v4, v4, [C

    .line 90
    .line 91
    const/16 v5, 0x30

    .line 92
    .line 93
    aput-char v5, v4, v2

    .line 94
    .line 95
    const/16 v5, 0x78

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    aput-char v5, v4, v6

    .line 99
    .line 100
    :goto_1
    if-ge v2, v1, :cond_5

    .line 101
    .line 102
    add-int/lit8 v5, v3, 0x1

    .line 103
    .line 104
    aget-byte v6, v0, v2

    .line 105
    .line 106
    and-int/lit16 v7, v6, 0xf0

    .line 107
    .line 108
    ushr-int/lit8 v7, v7, 0x4

    .line 109
    .line 110
    sget-object v8, Lgd/h;->f:[C

    .line 111
    .line 112
    aget-char v7, v8, v7

    .line 113
    .line 114
    aput-char v7, v4, v3

    .line 115
    .line 116
    add-int/lit8 v3, v5, 0x1

    .line 117
    .line 118
    and-int/lit8 v6, v6, 0xf

    .line 119
    .line 120
    aget-char v6, v8, v6

    .line 121
    .line 122
    aput-char v6, v4, v5

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    .line 130
    .line 131
    .line 132
    return-object v0
.end method
