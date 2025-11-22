.class public final Ld0/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/l$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/l;->a(Li0/e;Ljava/lang/Object;Lq0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li0/e;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lq0/c;

.field public final synthetic d:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;Li0/e;Ljava/lang/Object;Lq0/c;)V
    .locals 0

    iput-object p1, p0, Ld0/l$d;->d:Ld0/l;

    iput-object p2, p0, Ld0/l$d;->a:Li0/e;

    iput-object p3, p0, Ld0/l$d;->b:Ljava/lang/Object;

    iput-object p4, p0, Ld0/l$d;->c:Lq0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ld0/l$d;->d:Ld0/l;

    iget-object v1, p0, Ld0/l$d;->a:Li0/e;

    iget-object v2, p0, Ld0/l$d;->b:Ljava/lang/Object;

    iget-object v3, p0, Ld0/l$d;->c:Lq0/c;

    invoke-virtual {v0, v1, v2, v3}, Ld0/l;->a(Li0/e;Ljava/lang/Object;Lq0/c;)V

    return-void
.end method
