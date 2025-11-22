.class public final Lya/b$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/b;->b(Lp4/g7;Lna/h;)Lp4/g7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lva/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp4/g7;

.field public final synthetic b:Lna/h;


# direct methods
.method public constructor <init>(Lp4/g7;Lna/h;)V
    .locals 0

    iput-object p1, p0, Lya/b$a;->a:Lp4/g7;

    iput-object p2, p0, Lya/b$a;->b:Lna/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    iget-object v1, p0, Lya/b$a;->a:Lp4/g7;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "additionalAnnotations"

    .line 9
    .line 10
    iget-object v2, p0, Lya/b$a;->b:Lna/h;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lp4/g7;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lya/c;

    .line 18
    .line 19
    iget-object v0, v0, Lya/c;->q:Lva/e;

    .line 20
    .line 21
    iget-object v1, v1, Lp4/g7;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ll9/e;

    .line 24
    .line 25
    invoke-interface {v1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lva/t;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lva/b;->b(Lva/t;Ljava/lang/Iterable;)Lva/t;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
