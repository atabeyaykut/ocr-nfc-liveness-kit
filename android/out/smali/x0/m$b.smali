.class public final Lx0/m$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:La1/a;

.field public final b:La1/a;

.field public final c:La1/a;

.field public final d:La1/a;

.field public final e:Lx0/o;

.field public final f:Lx0/q$a;

.field public final g:Lr1/a$c;


# direct methods
.method public constructor <init>(La1/a;La1/a;La1/a;La1/a;Lx0/o;Lx0/q$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx0/m$b$a;

    invoke-direct {v0, p0}, Lx0/m$b$a;-><init>(Lx0/m$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lr1/a;->a(ILr1/a$b;)Lr1/a$c;

    move-result-object v0

    iput-object v0, p0, Lx0/m$b;->g:Lr1/a$c;

    iput-object p1, p0, Lx0/m$b;->a:La1/a;

    iput-object p2, p0, Lx0/m$b;->b:La1/a;

    iput-object p3, p0, Lx0/m$b;->c:La1/a;

    iput-object p4, p0, Lx0/m$b;->d:La1/a;

    iput-object p5, p0, Lx0/m$b;->e:Lx0/o;

    iput-object p6, p0, Lx0/m$b;->f:Lx0/q$a;

    return-void
.end method
