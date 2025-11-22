.class public final Ld0/l$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/l$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/l;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld0/l$l;->b:Ld0/l;

    iput-object p2, p0, Ld0/l$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld0/l$l;->b:Ld0/l;

    iget-object v1, p0, Ld0/l$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld0/l;->n(Ljava/lang/String;)V

    return-void
.end method
