.class public final Lna/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(Llb/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lna/h$b;->b(Lna/h;Llb/c;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/u;->a:Lm9/u;

    return-object v0
.end method

.method public final n(Llb/c;)Lna/c;
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EMPTY"

    return-object v0
.end method
