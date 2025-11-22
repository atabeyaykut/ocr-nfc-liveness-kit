.class public final Lpa/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/b;-><init>(Lbc/l;Llb/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lma/o0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/b;


# direct methods
.method public constructor <init>(Lpa/b;)V
    .locals 0

    iput-object p1, p0, Lpa/b$c;->a:Lpa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpa/y;

    iget-object v1, p0, Lpa/b$c;->a:Lpa/b;

    invoke-direct {v0, v1}, Lpa/y;-><init>(Lpa/b;)V

    return-object v0
.end method
