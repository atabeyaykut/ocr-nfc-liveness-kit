.class public final Lt1/s;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lt1/w;",
        "Lt1/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt1/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/s;

    invoke-direct {v0}, Lt1/s;-><init>()V

    sput-object v0, Lt1/s;->a:Lt1/s;

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
    .locals 3

    .line 1
    check-cast p1, Lt1/w;

    .line 2
    .line 3
    const-string v0, "$this$setState"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 9
    .line 10
    new-instance v1, Lc2/c;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lc2/c;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/16 v2, 0x5f

    .line 17
    .line 18
    invoke-static {p1, v1, v0, v2}, Lt1/w;->a(Lt1/w;Lc2/c;Lc2/c;I)Lt1/w;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
