.class public final Lvb/o$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/o;->f(Lvb/d;Lx9/l;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/a;",
        "Lma/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lvb/o$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb/o$b;

    invoke-direct {v0}, Lvb/o$b;-><init>()V

    sput-object v0, Lvb/o$b;->a:Lvb/o$b;

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
    check-cast p1, Lma/a;

    .line 2
    .line 3
    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
