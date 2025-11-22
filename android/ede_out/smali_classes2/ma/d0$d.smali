.class public final Lma/d0$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma/d0;-><init>(Lbc/l;Lma/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/c;",
        "Lma/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/d0;


# direct methods
.method public constructor <init>(Lma/d0;)V
    .locals 0

    iput-object p1, p0, Lma/d0$d;->a:Lma/d0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Llb/c;

    .line 2
    .line 3
    const-string v0, "fqName"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lpa/r;

    .line 9
    .line 10
    iget-object v1, p0, Lma/d0$d;->a:Lma/d0;

    .line 11
    .line 12
    iget-object v1, v1, Lma/d0;->b:Lma/b0;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Lpa/r;-><init>(Lma/b0;Llb/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
