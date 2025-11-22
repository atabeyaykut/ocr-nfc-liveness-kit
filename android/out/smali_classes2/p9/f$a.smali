.class public final Lp9/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lp9/f;Lp9/f;)Lp9/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp9/g;->a:Lp9/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lp9/f$a$a;->a:Lp9/f$a$a;

    invoke-interface {p1, p0, v0}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp9/f;

    :goto_0
    return-object p0
.end method
