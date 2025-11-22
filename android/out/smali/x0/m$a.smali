.class public final Lx0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lx0/j$d;

.field public final b:Lr1/a$c;

.field public c:I


# direct methods
.method public constructor <init>(Lx0/m$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx0/m$a$a;

    invoke-direct {v0, p0}, Lx0/m$a$a;-><init>(Lx0/m$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lr1/a;->a(ILr1/a$b;)Lr1/a$c;

    move-result-object v0

    iput-object v0, p0, Lx0/m$a;->b:Lr1/a$c;

    iput-object p1, p0, Lx0/m$a;->a:Lx0/j$d;

    return-void
.end method
