.class public abstract Lsa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb/b;


# instance fields
.field public final a:Llb/f;


# direct methods
.method public constructor <init>(Llb/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/f;->a:Llb/f;

    return-void
.end method


# virtual methods
.method public final getName()Llb/f;
    .locals 1

    iget-object v0, p0, Lsa/f;->a:Llb/f;

    return-object v0
.end method
