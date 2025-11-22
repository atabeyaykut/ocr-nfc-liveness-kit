.class public final Lkotlin/reflect/jvm/internal/impl/load/java/c;
.super Lkotlin/reflect/jvm/internal/impl/load/java/e;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/e;-><init>()V

    return-void
.end method

.method public static final a(Lma/u;)Lma/u;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    const-string v1, "functionDescriptor.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Llb/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/c$a;

    invoke-static {p0, v0}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    move-result-object p0

    check-cast p0, Lma/u;

    return-object p0
.end method

.method public static b(Llb/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
