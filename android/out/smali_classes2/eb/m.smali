.class public final Leb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/v;


# static fields
.field public static final a:Leb/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb/m;

    invoke-direct {v0}, Leb/m;-><init>()V

    sput-object v0, Leb/m;->a:Leb/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgb/p;Ljava/lang/String;Lcc/m0;Lcc/m0;)Lcc/e0;
    .locals 2

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lowerBound"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.jvm.PlatformType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lec/h;->n:Lec/h;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-virtual {p3}, Lcc/m0;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-virtual {p4}, Lcc/m0;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-static {p1, v0}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Ljb/a;->g:Lmb/h$e;

    invoke-virtual {p1, p2}, Lmb/h$c;->l(Lmb/h$e;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lab/h;

    invoke-direct {p1, p3, p4}, Lab/h;-><init>(Lcc/m0;Lcc/m0;)V

    return-object p1

    :cond_1
    invoke-static {p3, p4}, Lcc/f0;->c(Lcc/m0;Lcc/m0;)Lcc/s1;

    move-result-object p1

    return-object p1
.end method
