.class public final Lra/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lra/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/Class;)Lra/e;
    .locals 12

    .line 1
    const-string v0, "klass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfb/b;

    .line 7
    .line 8
    invoke-direct {v0}, Lfb/b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lra/c;->b(Ljava/lang/Class;Leb/s$c;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lra/e;

    .line 15
    .line 16
    iget-object v2, v0, Lfb/b;->g:Lfb/a$a;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    iget-object v2, v0, Lfb/b;->a:[I

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    new-instance v6, Lkb/e;

    .line 27
    .line 28
    iget-object v2, v0, Lfb/b;->a:[I

    .line 29
    .line 30
    iget v4, v0, Lfb/b;->c:I

    .line 31
    .line 32
    and-int/lit8 v4, v4, 0x8

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_0
    invoke-direct {v6, v2, v4}, Lkb/e;-><init>([IZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Lkb/e;->c()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    iget-object v2, v0, Lfb/b;->d:[Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, v0, Lfb/b;->f:[Ljava/lang/String;

    .line 53
    .line 54
    iput-object v3, v0, Lfb/b;->d:[Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v2, v0, Lfb/b;->g:Lfb/a$a;

    .line 58
    .line 59
    sget-object v4, Lfb/a$a;->d:Lfb/a$a;

    .line 60
    .line 61
    if-eq v2, v4, :cond_4

    .line 62
    .line 63
    sget-object v4, Lfb/a$a;->e:Lfb/a$a;

    .line 64
    .line 65
    if-eq v2, v4, :cond_4

    .line 66
    .line 67
    sget-object v4, Lfb/a$a;->h:Lfb/a$a;

    .line 68
    .line 69
    if-ne v2, v4, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v5, 0x0

    .line 73
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 74
    .line 75
    iget-object v2, v0, Lfb/b;->d:[Ljava/lang/String;

    .line 76
    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    :goto_2
    iget-object v2, v0, Lfb/b;->h:[Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-static {v2}, Lkb/a;->b([Ljava/lang/String;)[B

    .line 85
    .line 86
    .line 87
    :cond_6
    new-instance v2, Lfb/a;

    .line 88
    .line 89
    iget-object v5, v0, Lfb/b;->g:Lfb/a$a;

    .line 90
    .line 91
    iget-object v7, v0, Lfb/b;->d:[Ljava/lang/String;

    .line 92
    .line 93
    iget-object v8, v0, Lfb/b;->f:[Ljava/lang/String;

    .line 94
    .line 95
    iget-object v9, v0, Lfb/b;->e:[Ljava/lang/String;

    .line 96
    .line 97
    iget-object v10, v0, Lfb/b;->b:Ljava/lang/String;

    .line 98
    .line 99
    iget v11, v0, Lfb/b;->c:I

    .line 100
    .line 101
    move-object v4, v2

    .line 102
    invoke-direct/range {v4 .. v11}, Lfb/a;-><init>(Lfb/a$a;Lkb/e;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    :goto_3
    move-object v2, v3

    .line 107
    :goto_4
    if-nez v2, :cond_8

    .line 108
    .line 109
    return-object v3

    .line 110
    :cond_8
    invoke-direct {v1, p0, v2}, Lra/e;-><init>(Ljava/lang/Class;Lfb/a;)V

    .line 111
    .line 112
    .line 113
    return-object v1
.end method
