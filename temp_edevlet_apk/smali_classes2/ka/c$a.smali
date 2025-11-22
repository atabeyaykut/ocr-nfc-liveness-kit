.class public final Lka/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lka/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Llb/c;)Lka/c$a$a;
    .locals 8

    .line 1
    const-string v0, "packageFqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lka/c;->values()[Lka/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    aget-object v6, v0, v3

    .line 18
    .line 19
    iget-object v7, v6, Lka/c;->a:Llb/c;

    .line 20
    .line 21
    invoke-static {v7, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    iget-object v7, v6, Lka/c;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v7, v2}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_0

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v7, 0x0

    .line 38
    :goto_1
    if-eqz v7, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v6, v5

    .line 45
    :goto_2
    if-nez v6, :cond_3

    .line 46
    .line 47
    return-object v5

    .line 48
    :cond_3
    iget-object p1, v6, Lka/c;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "this as java.lang.String).substring(startIndex)"

    .line 59
    .line 60
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 p1, 0x0

    .line 72
    :goto_3
    if-eqz p1, :cond_5

    .line 73
    .line 74
    goto :goto_6

    .line 75
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_4
    if-ge v0, p1, :cond_8

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    add-int/lit8 v3, v3, -0x30

    .line 88
    .line 89
    if-ltz v3, :cond_6

    .line 90
    .line 91
    const/16 v7, 0xa

    .line 92
    .line 93
    if-ge v3, v7, :cond_6

    .line 94
    .line 95
    const/4 v7, 0x1

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    const/4 v7, 0x0

    .line 98
    :goto_5
    if-nez v7, :cond_7

    .line 99
    .line 100
    :goto_6
    move-object p0, v5

    .line 101
    goto :goto_7

    .line 102
    :cond_7
    mul-int/lit8 v1, v1, 0xa

    .line 103
    .line 104
    add-int/2addr v1, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_7
    if-eqz p0, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    new-instance p1, Lka/c$a$a;

    .line 119
    .line 120
    invoke-direct {p1, v6, p0}, Lka/c$a$a;-><init>(Lka/c;I)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_9
    return-object v5
.end method
