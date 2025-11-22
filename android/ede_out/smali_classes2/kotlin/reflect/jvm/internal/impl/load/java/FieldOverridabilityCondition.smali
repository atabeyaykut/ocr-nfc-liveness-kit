.class public final Lkotlin/reflect/jvm/internal/impl/load/java/FieldOverridabilityCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lob/j$a;
    .locals 1

    sget-object v0, Lob/j$a;->c:Lob/j$a;

    return-object v0
.end method

.method public b(Lma/a;Lma/a;Lma/e;)Lob/j$b;
    .locals 2

    const-string p3, "superDescriptor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "subDescriptor"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p2, Lma/l0;

    sget-object v0, Lob/j$b;->c:Lob/j$b;

    if-eqz p3, :cond_5

    instance-of p3, p1, Lma/l0;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lma/l0;

    invoke-interface {p2}, Lma/j;->getName()Llb/f;

    move-result-object p3

    check-cast p1, Lma/l0;

    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    invoke-static {p2}, Lb8/f;->Q(Lma/l0;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lb8/f;->Q(Lma/l0;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lob/j$b;->a:Lob/j$b;

    return-object p1

    :cond_2
    invoke-static {p2}, Lb8/f;->Q(Lma/l0;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lb8/f;->Q(Lma/l0;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    sget-object p1, Lob/j$b;->b:Lob/j$b;

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method
