.class public final Lx0/m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr1/a$b<",
        "Lx0/n<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx0/m$b;


# direct methods
.method public constructor <init>(Lx0/m$b;)V
    .locals 0

    iput-object p1, p0, Lx0/m$b$a;->a:Lx0/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lx0/n;

    iget-object v0, p0, Lx0/m$b$a;->a:Lx0/m$b;

    iget-object v1, v0, Lx0/m$b;->a:La1/a;

    iget-object v2, v0, Lx0/m$b;->b:La1/a;

    iget-object v3, v0, Lx0/m$b;->c:La1/a;

    iget-object v4, v0, Lx0/m$b;->d:La1/a;

    iget-object v5, v0, Lx0/m$b;->e:Lx0/o;

    iget-object v6, v0, Lx0/m$b;->f:Lx0/q$a;

    iget-object v7, v0, Lx0/m$b;->g:Lr1/a$c;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lx0/n;-><init>(La1/a;La1/a;La1/a;La1/a;Lx0/o;Lx0/q$a;Lr1/a$c;)V

    return-object v8
.end method
