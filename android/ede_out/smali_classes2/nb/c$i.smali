.class public final Lnb/c$i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lnb/j;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lnb/c$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnb/c$i;

    invoke-direct {v0}, Lnb/c$i;-><init>()V

    sput-object v0, Lnb/c$i;->a:Lnb/c$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lnb/j;

    .line 2
    .line 3
    const-string v0, "$this$withOptions"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lnb/j;->k()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lm9/x;->a:Lm9/x;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lnb/j;->f(Ljava/util/Set;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lnb/b$b;->a:Lnb/b$b;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lnb/j;->d(Lnb/b;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lnb/j;->i()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lnb/p;->c:Lnb/p;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lnb/j;->e(Lnb/p;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lnb/j;->a()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lnb/j;->c()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lnb/j;->o()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lnb/j;->j()V

    .line 39
    .line 40
    .line 41
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 42
    .line 43
    return-object p1
.end method
