.class public final Lga/v0$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/v0;->b(Lma/u;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/a1;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lga/v0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/v0$a;

    invoke-direct {v0}, Lga/v0$a;-><init>()V

    sput-object v0, Lga/v0$a;->a:Lga/v0$a;

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
    check-cast p1, Lma/a1;

    .line 2
    .line 3
    sget-object v0, Lga/v0;->a:Lnb/d;

    .line 4
    .line 5
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "it.type"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lga/v0;->d(Lcc/e0;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
