.class public final Lx0/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr1/a$b<",
        "Lx0/j<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx0/m$a;


# direct methods
.method public constructor <init>(Lx0/m$a;)V
    .locals 0

    iput-object p1, p0, Lx0/m$a$a;->a:Lx0/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lx0/j;

    iget-object v1, p0, Lx0/m$a$a;->a:Lx0/m$a;

    iget-object v2, v1, Lx0/m$a;->a:Lx0/j$d;

    iget-object v1, v1, Lx0/m$a;->b:Lr1/a$c;

    invoke-direct {v0, v2, v1}, Lx0/j;-><init>(Lx0/j$d;Lr1/a$c;)V

    return-object v0
.end method
