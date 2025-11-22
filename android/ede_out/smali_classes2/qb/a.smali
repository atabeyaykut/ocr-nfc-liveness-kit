.class public final Lqb/a;
.super Lqb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqb/g<",
        "Lna/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lna/c;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqb/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lma/b0;)Lcc/e0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lqb/g;->a:Ljava/lang/Object;

    check-cast p1, Lna/c;

    invoke-interface {p1}, Lna/c;->getType()Lcc/e0;

    move-result-object p1

    return-object p1
.end method
