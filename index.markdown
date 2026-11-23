---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
nav_order: 1
title: "Open, Client-Owned Analytics for Operational Decisions"
description: "Independent advisory for diagnosing underperforming analytics, designing statistically defensible solutions, and building maintainable systems that clients own."
keywords: "operational analytics, statistical learning, analytical architecture, open-source machine learning, KMDS, tseda, drift remediation"
permalink: "/"
og_type: website
---
# Reliable Operational Decisions, Without Platform Lock-In

## Statistical Learning Built for the Real Decision

I help CTOs, engineering leaders, and operational teams turn organizational data into analytical systems that produce reliable, explainable, and maintainable decisions. R2-DS combines established statistical learning methods—refined by researchers and practitioners over decades—with disciplined software engineering. The result is a reusable, auditable solution that your organization can inspect, operate, extend, and own.
{: .text-justify}

Many analytics initiatives fail not because the team lacks algorithms, but because the solution does not adequately reflect the business process, data structure, validation requirements, or operational consequences. I focus on those gaps: problem framing, feature design, model selection, validation, monitoring, and maintenance. Foundation models and advanced techniques can be useful, but reinventing established methods is unnecessary when the available data and domain knowledge support a simpler, more transparent solution.
{: .text-justify}

[Discuss your problem](https://calendly.com/rajiv-sambasivan) · [Explore the methodology](/methodology/) · [Review case studies](https://github.com/rajivsam/kmds_migration)

## Where the Approach Creates Value

Simply passing cleaned data to an algorithm rarely produces a robust operational system. Real data may contain imbalance, hidden subpopulations, correlated features, inconsistent semantics, and changing operating conditions. The useful question is not "Which algorithm should we run?" but:

- What decision must the model support?
- What structure and limitations exist in the data?
- Which signals are relevant to the business process?
- How will success be measured in operation?
- What will reveal that the assumptions are no longer valid?

The [SBA Loan Analytics example](https://github.com/rajivsam/kmds_migration) illustrates the difference. A broad feature set produced weak discrimination and required review of the full population. Applying disciplined feature selection and validation changed the result materially. The validation PR-AUC increased from 0.1673 to 0.7560. On held-out data, the resulting policy captured 82.46% of defaults while reviewing 19.55% of the population.

This is not merely a better benchmark. It is a practical review queue aligned with an operational constraint. The same discipline applies in other settings. The [Olist regional demand segmentation example](https://github.com/rajivsam/kmds_migration/blob/main/olist_migration/documents/olist_usecase_summary.md) is a second representative example. A large and heterogeneous retail assortment was difficult to interpret when treated as a single undifferentiated stream. Converting the transaction history into a weekly demand representation and clustering the resulting week-SKU structure separated a broad baseline-demand group from smaller, behaviorally distinct segments that warrant focused merchandising, assortment, and inventory-policy attention. The result is not a generic forecast. It is a decision-support view that clarifies where operational attention should be concentrated and how the patterns can be explained, monitored, and refined over time. These examples are representative rather than exhaustive. If you have questions about a specific modeling task, [get in touch](https://calendly.com/rajiv-sambasivan). The full [performance report](https://github.com/rajivsam/kmds_migration/blob/main/sba_migration/agent_documents/sba_performance_report_summary.md) and [technical overview](https://rajivsam.github.io/kmds_migration/kmds_insights_article.html) show how the result was constructed and evaluated.
{: .text-justify}

## How I Help

### 1. Frame the Real Problem

I translate an operational concern into explicit statistical tasks, decision criteria, and validation requirements. The work begins with the process generating the data—not with a preferred model or platform.

### 2. Build the Analytical Architecture

I identify relevant features, data structures, sources of heterogeneity, candidate models, and failure conditions. The objective is to create a defensible architecture that reflects the actual decision and can be explained to technical and business stakeholders.

### 3. Make the Solution Reproducible

The solution is implemented as a structured, versioned workflow. Data preparation, feature definitions, modeling decisions, validation results, and deployment requirements remain visible and recoverable rather than residing in an individual notebook or vendor environment.

### 4. Keep It Honest in Operation

A model can deteriorate when the underlying process changes. Monitoring includes performance, data drift, feature stability, concept drift, and the continuing validity of the business assumptions. When change is detected, the response is explicit: recalibrate, redesign, or retire the affected component.

## Open Tools, Client Ownership

The underlying components are open source and designed for reuse:

- **[KMDS](https://github.com/rajivsam/kmds_migration)** provides a structured, reproducible workflow for analytical projects, including documented decisions, reusable project components, and agent-assisted execution.
- **[Imbalanced Feature Screener](https://github.com/rajivsam/imbalanced_feature_screener)** identifies discriminative features in imbalanced datasets, supporting focused feature contracts where rare outcomes make conventional screening unreliable.
- **[tseda](https://github.com/rajivsam/tseda)** supports analyst-guided time-series decomposition with explicit statistical traceability.
- **[Count TS Window Selector](https://github.com/rajivsam/count_ts_window_selector)** selects a homogeneous Poisson-process window from a time series of arrivals, helping teams distinguish stable operating periods from regime changes.
- **[Structure Identification for CS Data](https://github.com/rajivsam/structure_identification_for_CS_data)** helps expose hidden dependencies, segmentation, and changes in datasets before they distort modeling results.

The same workflow can support different business domains while retaining the discipline around data understanding, feature engineering, modeling, validation, and maintenance. Your organization retains the code, configuration, documentation, and analytical logic.
{: .text-justify}

## A Practical Approach to AI

Agentic tools are used throughout the work to accelerate exploration, implementation, documentation, and repetitive engineering. They do not replace expert accountability. Human judgment remains responsible for defining the decision, recognizing misleading patterns, selecting appropriate validation, and deciding whether a result is ready for operational use.
{: .text-justify}

The same principle applies to foundation models. They can provide a useful baseline, support cold starts, or transfer patterns when there is strong repeated structure across tasks. They are not automatically preferable to a well-designed model trained on your own data. The right choice depends on business value, explainability, data characteristics, infrastructure, and maintenance cost. See [Foundation Models for Tabular Data](https://r2dssanity.substack.com/p/foundation-models-for-tabular-data) for a fuller discussion.
{: .text-justify}

## Ways to Engage

### Analytical Systems Audit — 2 to 3 Weeks

For a team that has data or an existing model but is uncertain why results are weak, unstable, or difficult to trust, the audit can include:

- Mapping the operational decision and expected business impact
- Reviewing data structure, feature definitions, and sources of risk
- Assessing class imbalance, heterogeneity, leakage, drift, and validation
- Benchmarking the current approach against credible alternatives
- Identifying the highest-value corrective actions
- Delivering a prioritized architecture and implementation roadmap

The audit is intended to give decision-makers a clear answer: **what is failing, why it is failing, and what should be done next.**

### Solution Development Kickoff

For a defined opportunity, the next step can be a focused solution kickoff covering the problem definition, statistical design, reproducibility structure, feature strategy, evaluation plan, and first implementation backlog. The engagement is structured around a durable capability rather than a disposable proof of concept.

R2-DS works with U.S. enterprises and global capability centers (GCCs), including teams in Chennai and Bengaluru. Engagements can be structured through a direct independent-contractor agreement or a corporation-to-corporation arrangement, subject to the requirements of the parties.
{: .text-justify}

## Why Work With R2-DS

- **Business decision before technical method** — the statistical work is tied to a real operating choice.
- **Transparent analytical architecture** — results can be inspected, challenged, reproduced, and maintained.
- **Reusable engineering** — the solution is designed as a capability, not as an isolated experiment.
- **Client ownership** — code, knowledge, and analytical logic remain with the organization.
- **Experienced judgment** — 25+ years of engineering and analytical experience across retail, telecom, transport, finance, government, and software tools.
- **Sustained technical foundation** — formal PhD-level training in machine learning and publications in statistical learning, graph-oriented systems, optimization, and enterprise-scale machine learning.

<div style="max-width: 900px; margin: 2rem auto;">
  <p style="text-align: center; font-weight: 600; margin-bottom: 1rem;">Watch a short video describing my background and approach.</p>
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
    <iframe src="https://www.youtube.com/embed/cporvnttK1U" title="Overview of KMDS approach" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
  </div>
</div>

{:refdef: style="text-align: center;"}
![rinse and repeat logo](assets/images/logonav_resized.png)
{: refdef}

---

## Start With the Decision

If you have operational data, understand the decision that needs improvement, and suspect that the current statistical approach is not trustworthy, [book an introductory call](https://calendly.com/rajiv-sambasivan). We can use the conversation to clarify the problem, assess whether R2-DS is a suitable partner, and identify whether an audit or solution kickoff is the appropriate next step.

[LinkedIn](https://www.linkedin.com/in/rajiv-sambasivan/) · [GitHub](https://github.com/rajivsam/) · [Google Scholar](https://scholar.google.com/citations?user=96db8S4AAAAJ&hl=en)
