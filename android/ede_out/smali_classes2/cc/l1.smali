.class public abstract Lcc/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcc/l1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/l1$a;

    invoke-direct {v0}, Lcc/l1$a;-><init>()V

    sput-object v0, Lcc/l1;->a:Lcc/l1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lna/h;)Lna/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract d(Lcc/e0;)Lcc/i1;
.end method

.method public e()Z
    .locals 0

    instance-of p0, p0, Lcc/l1$a;

    return p0
.end method

.method public f(Lcc/e0;Lcc/t1;)Lcc/e0;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
