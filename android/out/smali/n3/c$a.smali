.class public final Ln3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Ln3/c$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lc5/v;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/os/Looper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc5/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/v;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ln3/c$a;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Ln3/c$a;-><init>(Lc5/v;Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    sput-object v2, Ln3/c$a;->c:Ln3/c$a;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lc5/v;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/c$a;->a:Lc5/v;

    iput-object p2, p0, Ln3/c$a;->b:Landroid/os/Looper;

    return-void
.end method
