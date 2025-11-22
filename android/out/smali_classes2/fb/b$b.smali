.class public final Lfb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lfb/b;


# direct methods
.method public constructor <init>(Lfb/b;)V
    .locals 0

    iput-object p1, p0, Lfb/b$b;->a:Lfb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Llb/f;Llb/b;Llb/f;)V
    .locals 0

    return-void
.end method

.method public final c(Llb/f;)Leb/s$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "d1"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lfb/c;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lfb/c;-><init>(Lfb/b$b;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    const-string v0, "d2"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lfb/d;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lfb/d;-><init>(Lfb/b$b;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public final d(Llb/b;Llb/f;)Leb/s$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Llb/f;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Llb/f;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "k"

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lfb/b$b;->a:Lfb/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    instance-of p2, p1, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p2, :cond_5

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sget-object p2, Lfb/a$a;->b:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lfb/a$a;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    sget-object p1, Lfb/a$a;->c:Lfb/a$a;

    .line 40
    .line 41
    :cond_0
    iput-object p1, v1, Lfb/b;->g:Lfb/a$a;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "mv"

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    instance-of p2, p1, [I

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    check-cast p1, [I

    .line 57
    .line 58
    iput-object p1, v1, Lfb/b;->a:[I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "xs"

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    instance-of p2, p1, Ljava/lang/String;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    iput-object p1, v1, Lfb/b;->b:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "xi"

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    instance-of p2, p1, Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    check-cast p1, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, v1, Lfb/b;->c:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "pn"

    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    instance-of p2, p1, Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    return-void
.end method

.method public final f(Llb/f;Lqb/f;)V
    .locals 0

    return-void
.end method
