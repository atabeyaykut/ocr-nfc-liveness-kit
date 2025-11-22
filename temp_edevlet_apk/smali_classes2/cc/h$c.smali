.class public final Lcc/h$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/h;-><init>(Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Boolean;",
        "Lcc/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcc/h$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/h$c;

    invoke-direct {v0}, Lcc/h$c;-><init>()V

    sput-object v0, Lcc/h$c;->a:Lcc/h$c;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcc/h$a;

    .line 7
    .line 8
    sget-object v0, Lec/i;->d:Lec/f;

    .line 9
    .line 10
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcc/h$a;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method
