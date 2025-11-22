.class public final Lsa/g;
.super Lsa/f;
.source "SourceFile"

# interfaces
.implements Lcb/c;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Llb/f;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lsa/f;-><init>(Llb/f;)V

    iput-object p2, p0, Lsa/g;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final a()Lsa/e;
    .locals 2

    new-instance v0, Lsa/e;

    iget-object v1, p0, Lsa/g;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1}, Lsa/e;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
