.class public final Lyb/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb/i0$a;
    }
.end annotation


# direct methods
.method public static final a(Lgb/w;)Lma/o;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lyb/i0$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    sget-object p0, Lma/p;->a:Lma/p$d;

    const-string v0, "PRIVATE"

    goto :goto_1

    :cond_1
    sget-object p0, Lma/p;->f:Lma/p$i;

    const-string v0, "LOCAL"

    goto :goto_1

    :cond_2
    sget-object p0, Lma/p;->e:Lma/p$h;

    const-string v0, "PUBLIC"

    goto :goto_1

    :cond_3
    sget-object p0, Lma/p;->c:Lma/p$f;

    const-string v0, "PROTECTED"

    goto :goto_1

    :cond_4
    sget-object p0, Lma/p;->b:Lma/p$e;

    const-string v0, "PRIVATE_TO_THIS"

    goto :goto_1

    :cond_5
    sget-object p0, Lma/p;->d:Lma/p$g;

    const-string v0, "INTERNAL"

    :goto_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lgb/i;)Lma/b$a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lyb/i0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    sget-object v0, Lma/b$a;->a:Lma/b$a;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lma/b$a;->d:Lma/b$a;

    goto :goto_1

    :cond_2
    sget-object v0, Lma/b$a;->c:Lma/b$a;

    goto :goto_1

    :cond_3
    sget-object v0, Lma/b$a;->b:Lma/b$a;

    :cond_4
    :goto_1
    return-object v0
.end method
