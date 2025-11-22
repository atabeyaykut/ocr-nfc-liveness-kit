.class public final Lya/e$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/e;-><init>(Lp4/g7;Lcb/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcb/a;",
        "Lna/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lya/e;


# direct methods
.method public constructor <init>(Lya/e;)V
    .locals 0

    iput-object p1, p0, Lya/e$a;->a:Lya/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcb/a;

    .line 2
    .line 3
    const-string v0, "annotation"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lwa/c;->a:Llb/f;

    .line 9
    .line 10
    iget-object v0, p0, Lya/e$a;->a:Lya/e;

    .line 11
    .line 12
    iget-object v1, v0, Lya/e;->a:Lp4/g7;

    .line 13
    .line 14
    iget-boolean v0, v0, Lya/e;->c:Z

    .line 15
    .line 16
    invoke-static {v1, p1, v0}, Lwa/c;->b(Lp4/g7;Lcb/a;Z)Lxa/g;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
