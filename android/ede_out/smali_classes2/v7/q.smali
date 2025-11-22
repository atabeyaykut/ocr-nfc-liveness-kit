.class public final enum Lv7/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv7/q;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lv7/q;

.field public static final synthetic b:[Lv7/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv7/q;

    invoke-direct {v0}, Lv7/q;-><init>()V

    sput-object v0, Lv7/q;->a:Lv7/q;

    const/4 v1, 0x1

    new-array v1, v1, [Lv7/q;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lv7/q;->b:[Lv7/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lv7/q;
    .locals 1

    sget-object v0, Lv7/q;->b:[Lv7/q;

    invoke-virtual {v0}, [Lv7/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv7/q;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lv7/g;->a()Lv7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lv7/g;->a:Lo4/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
