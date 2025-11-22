.class public final Ll8/c0$k;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ll8/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final d:Ll8/u$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll8/p;-><init>()V

    iput-object p1, p0, Ll8/c0$k;->a:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Ll8/c0$k;->c:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ll8/c0$k;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ll8/c0$k;->c:[Ljava/lang/Enum;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Ll8/k;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ll8/k;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ll8/k;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Ll8/c0$k;->b:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll8/c0$k;->b:[Ljava/lang/String;

    invoke-static {v0}, Ll8/u$a;->a([Ljava/lang/String;)Ll8/u$a;

    move-result-object v0

    iput-object v0, p0, Ll8/c0$k;->d:Ll8/u$a;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Missing field in "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ll8/v;

    .line 3
    .line 4
    iget v1, v0, Ll8/v;->j:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ll8/v;->s()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :cond_0
    const/16 v2, 0x8

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    if-lt v1, v2, :cond_5

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    if-le v1, v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v4, p0, Ll8/c0$k;->d:Ll8/u$a;

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v1, v0, Ll8/v;->m:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v4}, Ll8/v;->v(Ljava/lang/String;Ll8/u$a;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v1, v4, Ll8/u$a;->b:Led/x;

    .line 34
    .line 35
    iget-object v5, v0, Ll8/v;->g:Led/g;

    .line 36
    .line 37
    invoke-interface {v5, v1}, Led/g;->h0(Led/x;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v1, v3, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput v2, v0, Ll8/v;->j:I

    .line 45
    .line 46
    iget-object v2, v0, Ll8/u;->d:[I

    .line 47
    .line 48
    iget v0, v0, Ll8/u;->a:I

    .line 49
    .line 50
    add-int/2addr v0, v3

    .line 51
    aget v4, v2, v0

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    aput v4, v2, v0

    .line 56
    .line 57
    move v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0}, Ll8/v;->j()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, v4}, Ll8/v;->v(Ljava/lang/String;Ll8/u$a;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ne v4, v3, :cond_4

    .line 68
    .line 69
    iput v2, v0, Ll8/v;->j:I

    .line 70
    .line 71
    iput-object v1, v0, Ll8/v;->m:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, v0, Ll8/u;->d:[I

    .line 74
    .line 75
    iget v0, v0, Ll8/u;->a:I

    .line 76
    .line 77
    add-int/2addr v0, v3

    .line 78
    aget v2, v1, v0

    .line 79
    .line 80
    add-int/2addr v2, v3

    .line 81
    aput v2, v1, v0

    .line 82
    .line 83
    :cond_4
    move v0, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 86
    :goto_1
    if-eq v0, v3, :cond_6

    .line 87
    .line 88
    iget-object p1, p0, Ll8/c0$k;->c:[Ljava/lang/Enum;

    .line 89
    .line 90
    aget-object p1, p1, v0

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_6
    invoke-virtual {p1}, Ll8/u;->getPath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ll8/u;->j()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v1, Ll8/r;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "Expected one of "

    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Ll8/c0$k;->b:[Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, " but was "

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " at path "

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {v1, p1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Enum;

    .line 2
    .line 3
    iget-object v0, p0, Ll8/c0$k;->b:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    aget-object p2, v0, p2

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ll8/y;->p(Ljava/lang/String;)Ll8/y;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll8/c0$k;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
