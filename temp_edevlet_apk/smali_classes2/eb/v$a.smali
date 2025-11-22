.class public final Leb/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Leb/v;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leb/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Leb/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lkb/d;)Leb/v;
    .locals 1

    instance-of v0, p0, Lkb/d$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkb/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkb/d;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Leb/v$a;->d(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lkb/d$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkb/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkb/d;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Leb/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lj7/p;

    invoke-direct {p0}, Lj7/p;-><init>()V

    throw p0
.end method

.method public static c(Lib/c;Ljb/a$b;)Leb/v;
    .locals 1

    .line 1
    const-string v0, "nameResolver"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ljb/a$b;->c:I

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lib/c;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget p1, p1, Ljb/a$b;->d:I

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lib/c;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {v0, p0}, Leb/v$a;->d(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Leb/v;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leb/v;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Leb/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Leb/v;I)Leb/v;
    .locals 2

    const-string v0, "signature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leb/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Leb/v;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Leb/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
